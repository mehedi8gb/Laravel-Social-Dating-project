<!-- FOOTER -->
<div class="py-5 @if (Auth::check() && auth()->user()->dark_mode == 'off' || Auth::guest() ) footer_background_color footer_text_color @else bg-white @endif @if (Auth::check() && auth()->user()->dark_mode == 'off' && $settings->footer_background_color == '#ffffff' || Auth::guest() && $settings->footer_background_color == '#ffffff' ) border-top @endif">
<footer class="container" style="border-bottom: 1px solid #dddddd26;">
  <div class="row">
    <div class="col-md-3">
      <a href="{{url('/')}}">
        @if (Auth::check() && auth()->user()->dark_mode == 'on' )
          <img src="{{url('public/img', $settings->logo)}}" alt="{{$settings->title}}" class="max-w-125">
        @else
          <img src="{{url('public/img', $settings->logo_2)}}" alt="{{$settings->title}}" class="max-w-125">
      @endif
      </a>
	  <p>We give you the tools to succeed. We give creators a larger % of your earnings compared to other websites, while maximizing your exposure and brand recognition.</p>
      @if($settings->twitter != ''
          || $settings->facebook != ''
          || $settings->instagram != ''
          || $settings->pinterest != ''
          || $settings->youtube != ''
          || $settings->github != ''
          )
      <div class="w-100">
        <span class="w-100">{{trans('general.follow_us_social')}}</span>
        <ul class="list-inline list-social">
          @if ($settings->twitter != '')
          <li class="list-inline-item"><a href="{{$settings->twitter}}" target="_blank" class="ico-social"><i class="fab fa-twitter"></i></a></li>
        @endif

        @if ($settings->facebook != '')
          <li class="list-inline-item"><a href="{{$settings->facebook}}" target="_blank" class="ico-social"><i class="fab fa-facebook"></i></a></li>
          @endif

          @if ($settings->instagram != '')
          <li class="list-inline-item"><a href="{{$settings->instagram}}" target="_blank" class="ico-social"><i class="fab fa-instagram"></i></a></li>
        @endif

          @if ($settings->pinterest != '')
          <li class="list-inline-item"><a href="{{$settings->pinterest}}" target="_blank" class="ico-social"><i class="fab fa-pinterest"></i></a></li>
          @endif

          @if ($settings->youtube != '')
          <li class="list-inline-item"><a href="{{$settings->youtube}}" target="_blank" class="ico-social"><i class="fab fa-youtube"></i></a></li>
          @endif

          @if ($settings->github != '')
          <li class="list-inline-item"><a href="{{$settings->github}}" target="_blank" class="ico-social"><i class="fab fa-github"></i></a></li>
          @endif
        </ul>
      </div>
    @endif
    </div>
    <div class="col-md-3">
      <h5>@lang('general.about')</h5>
      <ul class="list-unstyled">
        @foreach (Pages::take(5)->get() as $page)
        <li><a class="link-footer" href="{{ url('/p', $page->slug) }}">
          {{ Lang::has('pages.' . $page->slug) ? __('pages.' . $page->slug) : $page->title }}
        </a>
      </li>
        @endforeach
        <li><a class="link-footer" href="{{ url('contact') }}">{{ trans('general.contact') }}</a></li>
      </ul>
    </div>
    @if (Categories::count() != 0)
    <div class="col-md-3">
      <h5>@lang('general.categories')</h5>
      <ul class="list-unstyled">
        @foreach (Categories::where('mode','on')->inRandomOrder()->take(5)->get() as $category) 
        <li><a class="link-footer" href="{{ url('category', $category->slug) }}">{{ Lang::has('categories.' . $category->slug) ? __('categories.' . $category->slug) : $category->name }}</a></li>
        @endforeach

        @if (Categories::count() > 6)
          <li><a class="link-footer" href="{{ url('creators') }}">{{ trans('general.explore') }} <i class="fa fa-long-arrow-alt-right"></i></a></li>
          @endif
      </ul>
    </div>
  @endif
    <div class="col-md-3">
      <h5>@lang('general.links')</h5>
      <ul class="list-unstyled">
      @guest
        <li><a class="link-footer" href="{{$settings->home_style == 0 ? url('login') : url('/')}}">{{ trans('auth.login') }}</a></li><li>
          @if ($settings->registration_active == '1')
        <li><a class="link-footer" href="{{$settings->home_style == 0 ? url('signup') : url('/')}}">{{ trans('auth.sign_up') }}</a></li><li>
		<li><a class="link-footer" href="https://thenaughtyspace.com/password/reset">Password Reset</a></li><li>  
		  
		  
        @endif
        @else
          <li><a class="link-footer url-user" href="{{ url(Auth::User()->username) }}">{{ auth()->user()->verified_id == 'yes' ? trans('general.my_page') : trans('users.my_profile') }}</a></li><li>
          <li><a class="link-footer" href="{{ url('settings/page') }}">{{ auth()->user()->verified_id == 'yes' ? trans('general.edit_my_page') : trans('users.edit_profile')}}</a></li><li>
          <li><a class="link-footer" href="{{ url('my/subscriptions') }}">{{ trans('users.my_subscriptions') }}</a></li><li>
          <li><a class="link-footer" href="{{ url('logout') }}">{{ trans('users.logout') }}</a></li><li>
      @endguest

      @guest
      <div class="btn-group dropup d-inline ">
        <li>
          <a class="link-footer dropdown-toggle text-decoration-none" href="javascript:;" data-toggle="dropdown">
            <i class="feather icon-globe"></i>
            @foreach (Languages::orderBy('name')->get() as $languages)
              @if ($languages->abbreviation == config('app.locale') ) {{ $languages->name }}  @endif
            @endforeach
        </a>

        <div class="dropdown-menu">
          @foreach (Languages::orderBy('name')->get() as $languages)
            <a @if ($languages->abbreviation != config('app.locale')) href="{{ url('lang', $languages->abbreviation) }}" @endif class="dropdown-item mb-1 dropdown-lang @if( $languages->abbreviation == config('app.locale') ) active text-white @endif">
            @if ($languages->abbreviation == config('app.locale')) <i class="fa fa-check mr-1"></i> @endif {{ $languages->name }}
            </a>
            @endforeach
        </div>
        </li>
      </div><!-- dropup -->
      @endguest

      </ul>
    </div>
  </div>
</footer>
	
</div>

<footer class="py-3  text-center" style="background-color: #191a1f !important;">
  <div class="container">
    <div class="row">
<small class="text-muted" align="center">DISCLAIMER: Any Snapchat, Instagram, Facebook, or Twitter references, names, logos, brands, and any other trademarks or images featured or referred to within the naughtyspace.com website are the property of their respective trademark owners. These trademark owners are not affiliated with RTR Solutions LLC or thenaughtyspac.com. Snapchat, Instagram, Facebook, or Twitter DOES NOT sponsor or endorse naughtyspace.com. WE ARE NOT SNAPCHAT, INSTAGRAM, FACEBOOK or TWITTER. </small>
&nbsp;		
<small class="text-muted">		  
Billing Issues:
If you'd like to cancel your subscription and not to be billed again, or for any billing questions including refunds on a case-by-case basis, please contact our billing partner, CCBill via live chat (https://support.ccbill.com/), or phone 1.888.596.9279, or email at support@ccbill.com
</small>
<small class="text-muted">		
Complaints:
Fo all complaints, please contact us through complaints@thenaughtyspace.com. Complaints will be reviewed and resolved within seven (7) business days. That resolution will then be communicated to the Complainant. Appeals or requests for any decision made should be presented, again, to complaints@thenaughtyspace.com.
</small>		
      <div class="col-md-12 copyright" style="margin-top: 15px;">
		  <small class="text-muted">
		  &copy; {{date('Y')}} Naughty Space. Trademarks and brands are the property of their respective owners.
		</small>
      </div>	
    </div>
  </div>
</footer>
