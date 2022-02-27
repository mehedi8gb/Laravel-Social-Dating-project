@extends('layouts.app')

@section('title'){{trans('general.notifications')}} -@endsection

@section('content')
<section class="section section-sm">
    <div class="container">
      <div class="row justify-content-center text-center mb-sm">
        <div class="col-lg-8 py-5">
          <h2 class="mb-0 font-montserrat">
            <i class="far fa-bell mr-2"></i> {{trans('general.notifications')}}

            <small class="font-tiny">
              <a href="javascript:;" class="btn-notify" data-toggle="modal" data-target="#notifications"><i class="fa fa-cog mr-2"></i></a>

          {{-- @if (count($notifications) != 0)
              {!! Form::open([
    						'method' => 'POST',
    						'url' => "notifications/delete",
    						'class' => 'd-inline'
    					]) !!}

    					{!! Form::button('<i class="fa fa-trash-alt"></i>', ['class' => 'btn btn-lg  align-baseline p-0 e-none btn-link actionDeleteNotify']) !!}
    					{!! Form::close() !!}
            @endif --}}
            </small>
          </h2>
          <p class="lead text-muted mt-0">{{trans('general.notifications_subtitle')}}</p>
        </div>
      </div>
      <div class="row">

        @include('includes.cards-settings')

        <div class="col-md-6 col-lg-9 mb-5 mb-lg-0">


            <div class="card bg-white shadow border-0">

                <div class="card-body px-lg-5 py-lg-5">
                  <form method="POST" action="{{ url('notifications/settings') }}" id="form">

                    @csrf

                    @if (auth()->user()->verified_id == 'yes')
                    <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" name="notify_new_subscriber" value="yes" @if (auth()->user()->notify_new_subscriber == 'yes') checked @endif id="customSwitch1">
                      <label class="custom-control-label switch" for="customSwitch1">{{ trans('general.someone_subscribed_content') }}</label>
                    </div>

                    <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" name="notify_liked_post" value="yes" @if (auth()->user()->notify_liked_post == 'yes') checked @endif id="customSwitch2">
                      <label class="custom-control-label switch" for="customSwitch2">{{ trans('general.someone_liked_post') }}</label>
                    </div>

                    <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" name="notify_liked_comment" value="yes" @if (auth()->user()->notify_liked_comment == 'yes') checked @endif id="customSwitch10">
                      <label class="custom-control-label switch" for="customSwitch10">{{ trans('general.someone_liked_comment') }}</label>
                    </div>

                    <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" name="notify_commented_post" value="yes" @if (auth()->user()->notify_commented_post == 'yes') checked @endif id="customSwitch3">
                      <label class="custom-control-label switch" for="customSwitch3">{{ trans('general.someone_commented_post') }}</label>
                    </div>

                    <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" name="notify_new_tip" value="yes" @if (auth()->user()->notify_new_tip == 'yes') checked @endif id="customSwitch5">
                      <label class="custom-control-label switch" for="customSwitch5">{{ trans('general.someone_sent_tip') }}</label>
                    </div>

                    <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" name="notify_new_ppv" value="yes" @if (auth()->user()->notify_new_ppv == 'yes') checked @endif id="customSwitch9">
                      <label class="custom-control-label switch" for="customSwitch9">{{ trans('general.someone_bought_my_content') }}</label>
                    </div>
                  @endif

                    <div class="mt-3">
                      <h6 class="position-relative">{{trans('general.email_notification')}}
                      </h6>
                    </div>

                    @if (auth()->user()->verified_id == 'yes')
                      <div class="custom-control custom-switch">
                        <input type="checkbox" class="custom-control-input" name="email_new_subscriber" value="yes" @if (auth()->user()->email_new_subscriber == 'yes') checked @endif id="customSwitch4">
                        <label class="custom-control-label switch" for="customSwitch4">{{ trans('general.someone_subscribed_content') }}</label>
                      </div>

                      <div class="custom-control custom-switch">
                        <input type="checkbox" class="custom-control-input" name="email_new_tip" value="yes" @if (auth()->user()->email_new_tip == 'yes') checked @endif id="customSwitch7">
                        <label class="custom-control-label switch" for="customSwitch7">{{ trans('general.someone_sent_tip') }}</label>
                      </div>

                      <div class="custom-control custom-switch">
                        <input type="checkbox" class="custom-control-input" name="email_new_ppv" value="yes" @if (auth()->user()->email_new_ppv == 'yes') checked @endif id="customSwitch8">
                        <label class="custom-control-label switch" for="customSwitch8">{{ trans('general.someone_bought_my_content') }}</label>
                      </div>
                    @endif


                    <div class="custom-control custom-switch">
                      <input type="checkbox" class="custom-control-input" name="notify_email_new_post" value="yes" @if (auth()->user()->notify_email_new_post == 'yes') checked @endif id="customSwitch6">
                      <label class="custom-control-label switch" for="customSwitch6">{{ trans('general.new_post_creators_subscribed') }}</label>
                    </div>

                    <button type="submit" id="save" data-msg-success="{{ trans('admin.success_update') }}" class="btn btn-primary btn-sm mt-3 w-100" data-msg="{{trans('admin.save')}}">
                      {{trans('admin.save')}}
                    </button>

                </form>

                </div>
              </div>



    </div><!-- end col-md-6 -->

      </div>
    </div>
  </section>

  <div class="modal fade" id="notifications" tabindex="-1" role="dialog" aria-labelledby="modal-form" aria-hidden="true">
    <div class="modal-dialog modal- modal-dialog-centered modal-dialog-scrollable modal-sm" role="document">
      <div class="modal-content">
        <div class="modal-body p-0">
          <div class="card bg-white shadow border-0">

            <div class="card-body px-lg-5 py-lg-5">

              <div class="mb-3">
                <h6 class="position-relative">{{trans('general.receive_notifications_when')}}
                  <small data-dismiss="modal" class="btn-cancel-msg"><i class="bi bi-x-lg"></i></small>
                </h6>
              </div>

              <form method="POST" action="{{ url('notifications/settings') }}" id="form">

                @csrf

                @if (auth()->user()->verified_id == 'yes')
                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="notify_new_subscriber" value="yes" @if (auth()->user()->notify_new_subscriber == 'yes') checked @endif id="customSwitch1">
                  <label class="custom-control-label switch" for="customSwitch1">{{ trans('general.someone_subscribed_content') }}</label>
                </div>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="notify_liked_post" value="yes" @if (auth()->user()->notify_liked_post == 'yes') checked @endif id="customSwitch2">
                  <label class="custom-control-label switch" for="customSwitch2">{{ trans('general.someone_liked_post') }}</label>
                </div>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="notify_liked_comment" value="yes" @if (auth()->user()->notify_liked_comment == 'yes') checked @endif id="customSwitch10">
                  <label class="custom-control-label switch" for="customSwitch10">{{ trans('general.someone_liked_comment') }}</label>
                </div>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="notify_commented_post" value="yes" @if (auth()->user()->notify_commented_post == 'yes') checked @endif id="customSwitch3">
                  <label class="custom-control-label switch" for="customSwitch3">{{ trans('general.someone_commented_post') }}</label>
                </div>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="notify_new_tip" value="yes" @if (auth()->user()->notify_new_tip == 'yes') checked @endif id="customSwitch5">
                  <label class="custom-control-label switch" for="customSwitch5">{{ trans('general.someone_sent_tip') }}</label>
                </div>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="notify_new_ppv" value="yes" @if (auth()->user()->notify_new_ppv == 'yes') checked @endif id="customSwitch9">
                  <label class="custom-control-label switch" for="customSwitch9">{{ trans('general.someone_bought_my_content') }}</label>
                </div>
              @endif

                <div class="mt-3">
                  <h6 class="position-relative">{{trans('general.email_notification')}}
                  </h6>
                </div>

                @if (auth()->user()->verified_id == 'yes')
                  <div class="custom-control custom-switch">
                    <input type="checkbox" class="custom-control-input" name="email_new_subscriber" value="yes" @if (auth()->user()->email_new_subscriber == 'yes') checked @endif id="customSwitch4">
                    <label class="custom-control-label switch" for="customSwitch4">{{ trans('general.someone_subscribed_content') }}</label>
                  </div>

                  <div class="custom-control custom-switch">
                    <input type="checkbox" class="custom-control-input" name="email_new_tip" value="yes" @if (auth()->user()->email_new_tip == 'yes') checked @endif id="customSwitch7">
                    <label class="custom-control-label switch" for="customSwitch7">{{ trans('general.someone_sent_tip') }}</label>
                  </div>

                  <div class="custom-control custom-switch">
                    <input type="checkbox" class="custom-control-input" name="email_new_ppv" value="yes" @if (auth()->user()->email_new_ppv == 'yes') checked @endif id="customSwitch8">
                    <label class="custom-control-label switch" for="customSwitch8">{{ trans('general.someone_bought_my_content') }}</label>
                  </div>
                @endif


                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="notify_email_new_post" value="yes" @if (auth()->user()->notify_email_new_post == 'yes') checked @endif id="customSwitch6">
                  <label class="custom-control-label switch" for="customSwitch6">{{ trans('general.new_post_creators_subscribed') }}</label>
                </div>

                <button type="submit" id="save" data-msg-success="{{ trans('admin.success_update') }}" class="btn btn-primary btn-sm mt-3 w-100" data-msg="{{trans('admin.save')}}">
                  {{trans('admin.save')}}
                </button>

            </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div><!-- End Modal new Message -->
@endsection
