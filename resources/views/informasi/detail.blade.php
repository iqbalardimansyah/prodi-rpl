@extends('templates/header')
@section('contents')
<div class="news-details-page-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                <div class="row news-details-page-inner">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="news-img-holder">
                            <img src="{{asset('assets')}}/images/{{$result->image_path}}" class="img-responsive" alt="research">
                            <ul class="news-date1">
                                <li>{{ date('jS M Y',strtotime($result->updated_at)) }}</li>
                            </ul>
                        </div>
                        <h2 class="title-default-left-bold-lowhight"><a>{{$result->judul}}</a></h2>
                        <ul class="title-bar-high news-comments">
                            <li><a><i class="fa fa-user" aria-hidden="true"></i><span>By</span> Admin</a></li>
                            <li><a><i class="fa fa-comments-o" aria-hidden="true"></i><span>(00)</span> Comments</a></li>
                        </ul>
                        <p>
                            @php
                                echo $result->desc;
                            @endphp
                        </p>
                        <ul class="news-social">
                            <li><a href="https://www.facebook.com/rplupi" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="https://twitter.com/upi_rpl" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.linkedin.com/school/universitaspendidikanindonesia-upi/" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.youtube.com/channel/UCueWOgTEtpw-mUmbIElRlMA" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/rpl_upi/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                        <div class="course-details-comments">
                            <h3 class="sidebar-title">(0) Comments</h3>
                            {{-- <div class="media">
                                <a href="#" class="pull-left">
                                    <img alt="Comments" src="img/course/16.jpg" class="media-object">
                                </a>
                                <div class="media-body">
                                    <h3><a href="#">Greg Christman</a></h3>
                                    <h4>Excellent course!</h4>
                                    <p>Rimply dummy text of the printinwhen an unknown printer took eype and scramb relofeletogimply dummy and typesetting industry.</p>
                                </div>
                            </div>
                            <div class="media">
                                <a href="#" class="pull-left">
                                    <img alt="Comments" src="img/course/17.jpg" class="media-object">
                                </a>
                                <div class="media-body">
                                    <h3><a href="#">Lora Ekram</a></h3>
                                    <h4>Excellent course!</h4>
                                    <p>Rimply dummy text of the printinwhen an unknown printer took eype and scramb relofeletogimply dummy and typesetting industry.</p>
                                </div>
                            </div>
                            <div class="media">
                                <a href="#" class="pull-left">
                                    <img alt="Comments" src="img/course/18.jpg" class="media-object">
                                </a>
                                <div class="media-body">
                                    <h3><a href="#">Mike Jones</a></h3>
                                    <h4>Excellent course!</h4>
                                    <p>Rimply dummy text of the printinwhen an unknown printer took eype and scramb relofeletogimply dummy and typesetting industry.</p>
                                </div>
                            </div> --}}
                        </div>
                        <div class="leave-comments">
                            <h3 class="sidebar-title">Leave A Comment</h3>
                            <div class="row">
                                <div class="contact-form">
                                    <form>
                                        <fieldset>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Name" class="form-control">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <input type="email" placeholder="Email" class="form-control">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Website" class="form-control">
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <textarea placeholder="Comment" class="textarea form-control" id="form-message" rows="8" cols="20"></textarea>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group margin-bottom-none">
                                                    <button type="submit" class="view-all-accent-btn">Post Comment</button>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <div class="sidebar">
                    <div class="sidebar-box">
                        <div class="sidebar-box-inner">
                            <h3 class="sidebar-title">Search</h3>
                            <div class="sidebar-find-course">
                                <form id="checkout-form">
                                    <div class="form-group course-name">
                                        <input id="first-name" placeholder="Type Here . . .." class="form-control" type="text" />
                                    </div>
                                    <div class="form-group">
                                        <button class="sidebar-search-btn-full disabled" type="submit" value="Login">Search</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-box">
                        <div class="sidebar-box-inner">
                            <h3 class="sidebar-title">Latest Posts</h3>
                            <div class="sidebar-latest-research-area">
                                <ul>
                                    @foreach ($data['posts'] as $post)
                                    <li>
                                        <div class="latest-research-img">
                                            <a href="{{url("artikel/$post->id_artikel")}}"><img src="{{asset('assets')}}/images/{{$post->image_path}}" class="img-responsive" alt="skilled" width="200" height="40"></a>
                                        </div>
                                        <div class="latest-research-content">
                                            <h4>{{ date('jS M Y',strtotime($post->updated_at)) }}</h4>
                                            <p><?php
                                                echo substr($post->desc,0,50);
                                                ?>.....</p>
                                        </div>
                                    </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
