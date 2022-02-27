<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use App\Models\User;
use App\Models\Updates;
use App\Models\Messages;
use App\Models\AdminSettings;
use App\Models\MediaMessages;
use Carbon\Carbon;
use App\Helper;
use FFMpeg;
use Image;
use Form;
use Mail;

class UploadMediaMessageController extends Controller
{
  public function __construct(AdminSettings $settings, Request $request)
  {
		$this->settings = $settings::first();
		$this->request = $request;
    $this->path = config('path.messages');
    $this->middleware('auth');
	}

  /*
  // Storage the files
  */
  public function store()
  {

    $files = $this->request->file('media');

    foreach ($files as $media) {

      $sizeAllowed = $this->settings->file_size_allowed * 1024;
      $dimensions = explode('x', $this->settings->min_width_height_image);
      $allFiles[] = $media;

      $messages = [
      'photo.dimensions' => trans('general.validate_dimensions'),
      'photo.mimetypes' => trans('general.formats_available'),
      ];

      $originalExtension = strtolower($media->getClientOriginalExtension());
      $getMimeType = $media->getMimeType();

      if ($originalExtension == 'mp3' && $getMimeType == 'application/octet-stream') {
        $audio = ',application/octet-stream';
      } else {
        $audio = null;
      }

      if ($originalExtension == 'mp4'
      || $originalExtension == 'mov'
      || $originalExtension == 'mp3'
      ) {
        $isImage = null;
    	} else {
        $isImage = '|dimensions:min_width='.$dimensions[0].'';
    	}

    $validator = Validator::make($allFiles, [
      'photo'  => 'mimetypes:image/jpeg,image/gif,image/png,video/mp4,video/quicktime,audio/mpeg,video/3gpp'.$audio.'|max:'.$this->settings->file_size_allowed.','.$isImage.'',
    ], $messages);

     if ($validator->fails()) {
          return response()->json([
              'success' => false,
              'errors' => $validator->getMessageBag()->toArray(),
          ]);
      } //<-- Validator

      //<----------- UPLOAD IMAGE
      if ($isImage != null) {

        $path        = $this->path;
        $extension   = $media->getClientOriginalExtension();
        $mimeType    = $media->getMimeType();
        $widthHeight = getimagesize($media);
        $token       = Str::random(150).uniqid().now()->timestamp;
        $file        = strtolower(auth()->user()->id.time().Str::random(20).'.'.$extension);
        $url         = ucfirst(Helper::urlToDomain(url('/')));

        set_time_limit(0);
        ini_set('memory_limit', '512M');

        $img = Image::make($media);

        $width     = $img->width();
        $height    = $img->height();

        if ($extension == 'gif' && $mimeType == 'image/gif') {
          $media->storePubliclyAs($path, $file);

          $imgType = 'gif';
          $image = $file;
        } else {
          //=============== Image Large =================//
          if ($width > 2000) {
            $scale = 2000;
          } else {
            $scale = $width;
          }

          // Calculate font size
          if ($width >= 400 && $width < 900) {
            $fontSize = 18;
          } elseif ($width >= 800 && $width < 1200) {
            $fontSize = 24;
          } elseif ($width >= 1200 && $width < 2000) {
            $fontSize = 32;
          } elseif ($width >= 2000 && $width < 3000) {
            $fontSize = 50;
          } elseif ($width >= 3000) {
            $fontSize = 75;
          } else {
            $fontSize = 0;
          }

          if ($this->settings->watermark == 'on') {
            $imageResize = $img->orientate()->resize($scale, null, function ($constraint) {
              $constraint->aspectRatio();
              $constraint->upsize();
            })->text($url.'/'.auth()->user()->username, $img->width() - 20, $img->height() - 10, function($font)
                use ($fontSize) {
                $font->file(public_path('webfonts/arial.TTF'));
                $font->size($fontSize);
                $font->color('#eaeaea');
                $font->align('right');
                $font->valign('bottom');
            })->encode($extension);
          } else {
            $imageResize = $img->orientate()->resize($scale, null, function ($constraint) {
              $constraint->aspectRatio();
              $constraint->upsize();
            })->encode($extension);
          }

            // Storage Image
            Storage::put($path.$file, $imageResize, 'public');
            $image = $file;
          }

          // We insert the file into the database with a status 'pending'
          MediaMessages::create([
            'messages_id' => 0,
            'type' => 'image',
            'file' => $image,
            'width' => $width,
            'height' => $height,
            'file_name' => '',
            'file_size' => '',
            'token' => $token,
            'status' => 'pending',
            'created_at' => now()
          ]);

          return response()->json([
              'files' => [
                0 => [
                  'extension' => $extension,
                  'format' => 'image',
                  'name' => $image,
                  'size2' => Helper::formatBytes($media->getSize()),
                  'uploaded' => true,
                ]
              ],
              'hasWarnings' => false,
              'isSuccess' => true,
          ]);

      }//<====== End UPLOAD IMAGE

      //<----------- UPLOAD VIDEO
      if ($isImage == null
          && $originalExtension == 'mp4'
          || $originalExtension == 'mov'
    ) {

      $pathVideo = $this->path;
      $extension = $media->getClientOriginalExtension();
      $file      = strtolower(auth()->user()->id.time().Str::random(20).'.'.$extension);
      $token     = Str::random(150).uniqid().now()->timestamp;
      set_time_limit(0);

        //======= Storage Video
        $media->storePubliclyAs($pathVideo, $file);
        $video = $file;

        // Create Thumbnail Video
        try {
          $videoPoster = Str::random(20).uniqid().now()->timestamp.'-poster.jpg';

          FFMpeg::fromDisk(env('FILESYSTEM_DRIVER'))
          ->open($pathVideo.$video)
            ->getFrameFromSeconds(1)
            ->export()
          ->toDisk(env('FILESYSTEM_DRIVER'))
          ->save($pathVideo.$videoPoster);

          // Clean
          FFMpeg::cleanupTemporaryFiles();

        } catch (\Exception $e) {
          $videoPoster = null;
        }

        // We insert the file into the database with a status 'pending'
        MediaMessages::create([
          'messages_id' => 0,
          'type' => 'video',
          'file' => $video,
          'video_poster' => $videoPoster ?? null,
          'file_name' => '',
          'file_size' => '',
          'token' => $token,
          'status' => 'pending',
          'created_at' => now()
        ]);

        return response()->json([
            'files' => [
              0 => [
                'extension' => $extension,
                'format' => 'video',
                'name' => $video,
                'size2' => Helper::formatBytes($media->getSize()),
                'uploaded' => true,
              ]
            ],
            'hasWarnings' => false,
            'isSuccess' => true,
        ]);

      }//<====== End UPLOAD VIDEO

      //<----------- UPLOAD MUSIC
      if ($isImage == null && $originalExtension == 'mp3') {

        $pathMusic = $this->path;
        $extension = $media->getClientOriginalExtension();
        $file      = strtolower(auth()->user()->id.time().Str::random(20).'.'.$extension);
        $token     = Str::random(150).uniqid().now()->timestamp;
        set_time_limit(0);

        //======= Storage Video
        $media->storePubliclyAs($pathMusic, $file);
        $music = $file;

        // We insert the file into the database with a status 'pending'
        MediaMessages::create([
          'messages_id' => 0,
          'type' => 'music',
          'file' => $music,
          'file_name' => '',
          'file_size' => '',
          'token' => $token,
          'status' => 'pending',
          'created_at' => now()
        ]);

        return response()->json([
            'files' => [
              0 => [
                'extension' => $extension,
                'format' => 'audio',
                'name' => $music,
                'size2' => Helper::formatBytes($media->getSize()),
                'uploaded' => true,
              ]
            ],
            'hasWarnings' => false,
            'isSuccess' => true,
        ]);

      }//<====== End UPLOAD MUSIC

     }// End foreach
    }

  /*
  // Delete the files
  */
  public function delete()
  {
    // PATH
    $path      = $this->path;
    $findFile = MediaMessages::whereFile($this->request->file)->firstOrFail();

    if ($findFile) {
      Storage::delete($path.$findFile->file);
      Storage::delete($path.$findFile->video_poster);
      $findFile->delete();
    }

    return response()->json([
        'success' => true
    ]);


  }
}
