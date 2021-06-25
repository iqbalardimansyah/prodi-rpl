@if (session('message'))
<div class="media-body">
    <div class="d-flex justify-content-between">
        <span class="align-self-center mr-3 font-12 text-green">Just Now</span>
    </div>
    <p class="m-0 text-green">{!! session('message') !!}</p>
</div>
@endif
