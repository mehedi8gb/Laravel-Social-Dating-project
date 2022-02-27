<a href="{{url($response->username)}}">
<div class="card card-updates h-100 card-user-profile shadow-sm">
	<div class="card-cover" style="background: @if ($response->cover != '') url({{ Helper::getFile(config('path.cover').$response->cover) }})  @endif #505050 center center; background-size: cover;"></div>
	<div class="card-avatar">
		<a href="{{url($response->username)}}">
		<img src="{{Helper::getFile(config('path.avatar').$response->avatar)}}" width="95" height="95" alt="{{$response->name}}" class="img-user-small">
		</a>
	</div>
	<div class="card-body text-center">
			<h6 class="card-title pt-4">
				{{$response->hide_name == 'yes' ? $response->username : $response->name}}

				@if ($response->verified_id == 'yes')
					<small class="verified mr-1" title="{{trans('general.verified_account')}}"data-toggle="tooltip" data-placement="top">
						<i class="bi bi-patch-check-fill"></i>
					</small>
				@endif

				@if ($response->featured == 'yes')
				<small class="text-featured" title="{{trans('users.creator_featured')}}" data-toggle="tooltip" data-placement="top">
					<i class="fas fa fa-award"></i>
				</small>
			@endif
			</h6>

			<ul class="list-inline m-0">
				<li class="list-inline-item small"><i class="feather icon-file-text"></i> {{ Helper::formatNumber($response->updates()->count()) }}</li>
				<li class="list-inline-item small"><i class="feather icon-image"></i> {{ Helper::formatNumber($response->media()->where('media.image', '<>', '')->count()) }}</li>
				<li class="list-inline-item small"><i class="feather icon-video"></i> {{ Helper::formatNumber($response->media()->where('media.video', '<>', '')->orWhere('media.video_embed', '<>', '')->where('media.user_id', $response->id)->count()) }}</li>
				<li class="list-inline-item small"><i class="feather icon-mic"></i> {{ Helper::formatNumber($response->media()->where('media.music', '<>', '')->count()) }}</li>
				<li class="list-inline-item small"><i class="far fa-file-archive"></i> {{ Helper::formatNumber($response->media()->where('media.file', '<>', '')->count()) }}</li>
			</ul>

			<p class="m-0 py-3 text-muted card-text text-truncate">
				{{ Str::limit($response->story, 100, '...') }}
			</p>
<!-- Option 1 -->
			<a href="{{url($response->username)}}" class="btn btn-1 btn-sm btn-outline-primary px-3 active">
				@if ($response->price != 0.00 && $response->free_subscription == 'no')
					{{ __('general.price_per_month', ['price' => Helper::amountWithoutFormat($response->price)]) }}
				@endif

				@if ($response->free_subscription == 'yes')
					{{ __('general.free') }}
				@endif
			</a>
		
		
	
		
		
		
<!-- Option 4 - Tip Icon -->
				
             <a href="{{url('login')}}" data-toggle="modal" data-target="#loginFormModal" class="btn btn-1 btn-sm btn-outline-secondary px-3 active" title="{{trans('general.tip')}}"><i class="fa fa-donate mr-1 mr-lg-0"></i> {{trans('general.tip')}} </a>
          

	</div>

</div>
</a>		
		<!-- End Card -->
