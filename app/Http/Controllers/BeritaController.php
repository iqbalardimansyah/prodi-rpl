<?php

namespace App\Http\Controllers;

use App\Models\Berita;
use Illuminate\Http\Request;

class BeritaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin/berita/index')
            ->with('newses', Berita::orderBy('id_berita', 'ASC')->get());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/berita/form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required',
            'desc' => 'required',
            'image' => 'required|mimes:png,jpg,jpeg|max:5048'
        ]);
        $newImageName = uniqid() . '.' . $request->image->extension();

        $request->image->move(public_path('assets/images'),$newImageName);
        Berita::create([
            'judul' => $request->input('judul'),
            'desc' => $request->input('desc'),
            'image_path' => $newImageName
        ]);

        return redirect('/admin/berita')->with('message','Berita telah ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  string  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('admin/berita/form')
            ->with('result', Berita::where('id_berita',$id)->first());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  string  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'judul' => 'required',
            'desc' => 'required'
        ]);
        Berita::where('id_berita',$id)
            ->update([
                'judul' => $request->input('judul'),
                'desc' => $request->input('desc')
            ]);

        return redirect('/admin/berita')->with('message','Berita telah diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $news = Berita::where('id_berita',$id);
        $news->delete();

        return redirect('/admin/berita')->with('message','Berita telah dihapus');
    }
}
