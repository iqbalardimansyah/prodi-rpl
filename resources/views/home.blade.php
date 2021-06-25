@extends('templates/header')
@section('contents')
<!-- Slider 1 Area Start Here -->
<div class="slider1-area overlay-default">
    <div class="bend niceties preview-1">
        <div id="ensign-nivoslider-3" class="slides">
            <img src="{{asset('assets')}}/img/slider/Gedung_UPI_Cibiru_2 1.png" alt="slider" title="#slider-direction-1" />
            <img src="{{asset('assets')}}/img/slider/b-39 1.png" alt="slider" title="#slider-direction-2" />
            <img src="{{asset('assets')}}/img/slider/Laptop_Gelas_Atas_2 1.png" alt="slider" title="#slider-direction-3" />
        </div>
        <div id="slider-direction-1" class="t-cn slider-direction">
            <div class="slider-content s-tb slide-1">
                <div class="title-container s-tb-c">
                    <div class="title1">Rekayasa Perangkat Lunak</div>
                    <p>Menjadi Pelopor dan Unggul Dalam Pengembangan Keilmuan Rekayasa Perangkat Lunak</p>
                </div>
            </div>
        </div>
        <div id="slider-direction-2" class="t-cn slider-direction">
            <div class="slider-content s-tb slide-2">
                <div class="title-container s-tb-c">
                    <div class="title1">Software Engineering</div>
                    <p>Become a leading and outstanding departement in scientific development of software engineerning</p>
                </div>
            </div>
        </div>
        <div id="slider-direction-3" class="t-cn slider-direction">
            <div class="slider-content s-tb slide-3">
                <div class="title-container s-tb-c">
                    <div class="title1">Rekayasa Perangkat Lunak</div>
                    <p>Menjadi Pelopor dan Unggul Dalam Pengembangan Keilmuan Rekayasa Perangkat Lunak</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Slider 1 Area End Here -->
<!-- About 2 Area Start Here -->
<div class="about2-area">
    <div class="container">
        <h1 class="about-title">Welcome To <br> Rekayasa Perangkat Lunak</h1>
        <p class="about-sub-title">Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis aperiam eligendi doloremque. Eligendi tenetur eaque, consectetur placeat repudiandae itaque exercitationem necessitatibus voluptatum nihil sequi beatae vero, nobis ut molestiae vel.</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 wow fadeIn" data-wow-duration="2s" data-wow-delay=".1s">
                <div class="service-box2">
                    <div class="service-box-icon">
                        <a><i class="fa fa-cogs unselectable" aria-hidden="true"></i></a>
                    </div>
                    <h3><a class="unselectable">Rekayasa Data dan Inteligensi Bisnis</a></h3>
                    <p>Mempelajari teknik-teknik mengolah data, proses pencarian pola dan relasi dari berbagai perspektif di suatu dataset dengan memanfaatkan metode-metode kecerdasan komputasional yang hasilnya dapat dimanfaatkan untuk mendukung pengambilan keputusan.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 wow fadeIn" data-wow-duration="2s" data-wow-delay=".4s">
                <div class="service-box2">
                    <div class="service-box-icon">
                        <a><i class="fa fa-gamepad" aria-hidden="true"></i></a>
                    </div>
                    <h3><a class="unselectable">Multimedia <br> dan Game</a></h3>
                    <p>Mempelajari pemahaman tentang prinsip, konsep dan teknik animasi baik 2D maupun 3D, selain itu mempelajari cara pembuatan game, proses pengembangan game, theory of fun dan nilai edukasi dalam game.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 wow fadeIn" data-wow-duration="2s" data-wow-delay=".7s">
                <div class="service-box2">
                    <div class="service-box-icon">
                        <a><i class="fa fa-book" aria-hidden="true"></i></a>
                    </div>
                    <h3><a class="unselectable">Ubiquitous <br> Computing</a></h3>
                    <p>Mempelajari konsep ubiquitous computing dimana sistem atau aplikasi dapat dijalankan bukan hanya pada komputer namun pada beragam alat yang digunakan sehari-hari seperti smartphone, jam tangan, dan peralatan elektronik lainya yang bersistem cerdas.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About 2 Area End Here -->
<!-- Lecturers Area Start Here -->
<div class="lecturers-area">
    <div class="container">
        <h2 class="title-default-left">Staff Program Studi Rekayasa Perangkat Lunak</h2>
    </div>
    <div class="container">
        <div class="rc-carousel" data-loop="true" data-items="4" data-margin="30" data-autoplay="true" data-autoplay-timeout="10000" data-smart-speed="2000" data-dots="false" data-nav="true" data-nav-speed="false" data-r-x-small="1" data-r-x-small-nav="true" data-r-x-small-dots="false" data-r-x-medium="2" data-r-x-medium-nav="true" data-r-x-medium-dots="false" data-r-small="3" data-r-small-nav="true" data-r-small-dots="false" data-r-medium="4" data-r-medium-nav="true" data-r-medium-dots="false" data-r-large="4" data-r-large-nav="true" data-r-large-dots="false">
            @foreach ($data['dosens'] as $dosen)
            <div class="single-item">
                <div class="lecturers{{$dosen->id_dosen}}-item-wrapper">
                    <div class="lecturers-img-wrapper">
                        <a href="{{url("dosen/$dosen->id_dosen")}}"><img class="img-responsive" src="{{asset('assets')}}/images/dosen/{{$dosen->image_path}}" alt="team"></a>
                    </div>
                    <div class="lecturers-content-wrapper">
                        <h3 class="item-title"><a href="{{url("dosen/$dosen->id_dosen")}}">{{$dosen->nama}}</a></h3>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Lecturers Area End Here -->
<!-- Video Area Start Here -->
<div class="video-area overlay-video bg-common-style" style="background-image: url('{{asset('assets')}}/img/banner/1.jpg');">
    <div class="container">
        <div class="video-content">
            <h2 class="video-title">Lihat Video Profil Program Studi Kami</h2>
            <p class="video-sub-title">Profil Program Studi Rekayasa Perangkat Lunak yang Disajikan Dalam Sebuah Video Singkat</p>
            <a class="play-btn popup-youtube wow bounceInUp" data-wow-duration="2s" data-wow-delay=".1s" href="https://www.youtube.com/watch?v=DGY4b6uBNG4"><i class="fa fa-play" aria-hidden="true"></i></a>
        </div>
    </div>
</div>
<!-- Video Area End Here -->
<!-- News and Event Area Start Here -->
<div class="news-event-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 news-inner-area">
                <h2 class="title-default-left">Artikel RPL</h2>
                <ul class="news-wrapper">
                    @foreach ($data['articles'] as $article)
                    <li>
                        <div class="news-img-holder">
                            <a href="#"><img src="{{asset('assets')}}/images/{{ $article->image_path }}" class="img-responsive" alt="news" width="150px" height="101px"></a>
                        </div>
                        <div class="news-content-holder">
                            <h3><a href="{{url("artikel/$article->id_artikel")}}">{{ $article->judul }}</a></h3>
                            <div class="post-date">{{ date('jS M Y',strtotime($article->updated_at)) }}</div>
                            <p><?php
                                echo substr($article->desc,0,80);
                                ?>.....
                            </p>
                        </div>
                    </li>
                    @endforeach
                </ul>
                <div class="news-btn-holder">
                    <a href="{{url('/artikel')}}" class="view-all-accent-btn">View All</a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 news-inner-area">
                <h2 class="title-default-left">Berita RPL</h2>
                <ul class="news-wrapper">
                    @foreach ($data['newses'] as $news)
                    <li>
                        <div class="news-img-holder">
                            <a href="#"><img src="{{asset('assets')}}/images/{{ $news->image_path }}" class="img-responsive" alt="news" width="150px" height="101px"></a>
                        </div>
                        <div class="news-content-holder">
                            <h3><a href="{{url("berita/$news->id_berita")}}">{{ $news->judul }}</a></h3>
                            <div class="post-date">{{ date('jS M Y',strtotime($news->updated_at)) }}</div>
                            <p><?php
                                echo substr($news->desc,0,80);
                                ?>.....
                            </p>
                        </div>
                    </li>
                    @endforeach
                </ul>
                <div class="news-btn-holder">
                    <a href="{{url('/berita')}}" class="view-all-accent-btn">View All</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- News and Event Area End Here -->
<!-- Counter Area Start Here -->
<div class="counter-area bg-primary-deep" style="background-image: url('{{asset('assets')}}/img/banner/4.jpg');">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 counter1-box wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".20s">
                <h2 class="about-counter title-bar-counter" data-num="6">10</h2>
                <p>DOSEN PROFESIONAL</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 counter1-box wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".40s">
                <h2 class="about-counter title-bar-counter" data-num="142"></h2>
                <p>MAHASISWA BERKOMPETENS</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 counter1-box wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".60s">
                <h2 class="about-counter title-bar-counter" data-num="56">56</h2>
                <p>NEWS COURSES EVERY YEARS</p>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 counter1-box wow fadeInUp" data-wow-duration=".5s" data-wow-delay=".80s">
                <h2 class="about-counter title-bar-counter" data-num="77">77</h2>
                <p>REGISTERED STUDENTS</p>
            </div>
        </div>
    </div>
</div>
<!-- Counter Area End Here -->

<!-- Students Join 2 Area Start Here -->
<div class="students-join2-area">
    <div class="container">
        <div class="students-join2-wrapper">
            <div class="students-join2-left">
                <div id="ri-grid" class="author-banner-bg ri-grid header text-center">
                    <ul class="ri-grid-list">
                        {{-- @for ($i = 0; $i < 3; $i++)
                            @for ($x = 1; $x <= 8; $x++)
                                <li>
                                    <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa{{$x}}.png" alt=""></a>
                                </li>
                            @endfor
                        @endfor --}}
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa1.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa2.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa3.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa4.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa5.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa6.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa7.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa8.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa1.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa2.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa3.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa4.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa5.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa6.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa7.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa8.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa1.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa2.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa3.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa4.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa5.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa6.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa7.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa8.png" alt=""></a>
                        </li><li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa1.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa2.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa3.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa4.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa5.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa6.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa7.png" alt=""></a>
                        </li>
                        <li>
                            <a href="#"><img src="{{asset('assets')}}/img/students/mahasiswa8.png" alt=""></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="students-join2-right">
                <div>
                    <h2>Bergabunglah Bersama<span> 142</span> Mahasiswa.</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Students Join 2 Area End Here -->
<!-- Brand Area Start Here -->
{{-- <div class="brand-area">
    <div class="container">
        <div class="rc-carousel" data-loop="true" data-items="4" data-margin="30" data-autoplay="true" data-autoplay-timeout="5000" data-smart-speed="2000" data-dots="false" data-nav="false" data-nav-speed="false" data-r-x-small="2" data-r-x-small-nav="false" data-r-x-small-dots="false" data-r-x-medium="3" data-r-x-medium-nav="false" data-r-x-medium-dots="false" data-r-small="4" data-r-small-nav="false" data-r-small-dots="false" data-r-medium="4" data-r-medium-nav="false" data-r-medium-dots="false" data-r-large="4" data-r-large-nav="false" data-r-large-dots="false">
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/1.jpg" alt="brand"></a>
            </div>
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/2.jpg" alt="brand"></a>
            </div>
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/3.jpg" alt="brand"></a>
            </div>
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/4.jpg" alt="brand"></a>
            </div>
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/1.jpg" alt="brand"></a>
            </div>
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/2.jpg" alt="brand"></a>
            </div>
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/3.jpg" alt="brand"></a>
            </div>
            <div class="brand-area-box">
                <a href="#"><img src="{{asset('assets')}}/img/brand/4.jpg" alt="brand"></a>
            </div>
        </div>
    </div>
</div> --}}
<!-- Brand Area End Here -->
@endsection
