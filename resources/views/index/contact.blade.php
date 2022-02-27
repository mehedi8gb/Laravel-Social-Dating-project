@extends('layouts.app')

@section('title') {{trans('general.contact')}} -@endsection

@section('css')
  <script type="text/javascript">
      var error_scrollelement = {{ count($errors) > 0 ? 'true' : 'false' }};
  </script>
@endsection

@section('content')
  <div class="jumbotron home m-0 bg-gradient">
    <div class="container pt-lg-md">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="card bg-white shadow border-0">

          <div class="p-4">
            <h4 class="text-center mb-0 font-weight-bold">
              {{trans('general.contact')}}
            </h4>			  
            <small class="btn-block text-center mt-2">{{ trans('general.subtitle_contact') }}</small>
          </div>

            <div class="card-body px-lg-5 py-lg-5">

              @if (session('notification'))
                      <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    			<span aria-hidden="true">×</span>
                    			</button>

                        {{ session('notification') }}
                      </div>
                    @endif

              @include('errors.errors-forms')

              <form method="POST" action="{{ url('contact') }}">
                  @csrf

                  @if ($settings->captcha_contact == 'on')
                    @captcha
                  @endif

              <div class="row">

                <div class="col-md-6">
                <div class="form-group mb-3">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="feather icon-user"></i></span>
                    </div>
                    <input class="form-control" required value="{{Auth::user()->name ??  old('full_name')}}" placeholder="{{trans('auth.full_name')}}" name="full_name" type="text">
                  </div>
                </div>
                </div>

                <div class="col-md-6">
                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="feather icon-mail"></i></span>
                    </div>
                    <input name="email" required type="email" value="{{Auth::user()->email ??  old('email')}}" class="form-control" placeholder="{{ trans('auth.email') }}">
                  </div>
                </div>
                </div>

                </div><!-- Row -->

                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="feather icon-feather"></i></span>
                    </div>
                    <input name="subject" required type="text" value="{{old('subject')}}" class="form-control" placeholder="{{ trans('general.subject') }}">
                  </div>
                </div>

                <div class="form-group">
                  <textarea name="message" required rows="4" class="form-control">{{old('message') }}</textarea>
                  </div><!-- End Form Group -->

                  @if ($settings->link_terms != '' && $settings->link_privacy != '')
                  <div class="custom-control custom-control-alternative custom-checkbox">
                    <input class="custom-control-input" required id=" customCheckLogin" name="agree_terms_privacy" type="checkbox">
                    <label class="custom-control-label" for=" customCheckLogin">
                      <span>{{trans('general.i_agree_with')}}
                        <a href="{{$settings->link_terms}}" target="_blank">{{trans('admin.terms_conditions')}}</a>
                        {{trans('general.and')}} <a href="{{$settings->link_privacy}}" target="_blank">{{trans('admin.privacy_policy')}}</a>
                      </span>
                    </label>
                  </div>
                @endif

                <div class="text-center">
                  <button type="submit" class="btn btn-primary my-4 w-100">{{trans('auth.send')}} <i class="fa fa-paper-plane ml-1"></i></button>
                </div>
              </form>
              @if ($settings->captcha_contact == 'on')
                <small class="btn-block text-center">{{trans('auth.protected_recaptcha')}}
                  <a href="https://policies.google.com/privacy" target="_blank">{{trans('general.privacy')}}</a> - <a href="https://policies.google.com/terms" target="_blank">{{trans('general.terms')}}</a>
                </small>
              @endif
            </div>
          </div>
        </div>
 
<div class="col-lg-8" style="margin-top: 1rem;">
<div class="row">
<div class="col-lg-6 mb-2">
<div class="card">
<div class="card-body">
 <h5><i class="fas fa-hand-holding-usd mr-2 text-primary"></i>Our Offices</h5>
 <small>
RTR Solutions LLC<br>
8 The Green, Ste A, Dover, DE, 19901<br>
info@thenaughtyspace.com<br>
(800) 953-1594		<br>		  
</small>
</div>
</div>
</div>

<div class="col-lg-6 mb-2">
<div class="card">
<div class="card-body">
<h5><i class="fas fa-wallet mr-2 text-primary"></i>Contact Support</h5>
<a href="tel:8885969279" class="btn btn-1 btn-sm btn-outline-primary px-3 active">Phone Support</a>
<a href="mailto:support@ccbill.com" class="btn btn-1 btn-sm btn-outline-primary px-3 active">By Email
							</a>
<a href="https://secure.livechatinc.com/licence/1041032/open_chat.cgi?groups=41" target="_blank" class="btn btn-1 btn-sm btn-outline-primary px-3 active">Live Chat
</a>
</div>
</div>
</div>
</div>

		
</div>		  
</div>	  
   </div>
  </div>
@endsection
