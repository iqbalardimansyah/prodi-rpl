<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        return view('home');
    }

    public function sejarah()
    {
        return view('profil/tentang/sejarah');
    }
    public function kamda()
    {
        return view('profil/tentang/kamda');
    }
    public function rpl()
    {
        return view('profil/tentang/rpl');
    }

    public function visimisi()
    {
        return view('profil/visimisi');
    }
    public function staff()
    {
        return view('profil/staff');
    }
    public function struktur()
    {
        return view('profil/struktur');
    }
    public function fasilitas()
    {
        return view('profil/fasilitas');
    }

    public function prestasi()
    {
        return view('mahasiswa/prestasi');
    }
    public function alumni()
    {
        return view('mahasiswa/alumni');
    }

    public function penelitian()
    {
        return view('akademik/penelitian');
    }
    public function pengabdian()
    {
        return view('akademik/pengabdian');
    }
}
