<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use Illuminate\Http\Request;
use Cviebrock\EloquentSluggable\Services\SlugService;

class ArtikelController extends Controller
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
        return view('admin/artikel/index')
            ->with('articles', Artikel::orderBy('id_artikel', 'ASC')->get());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/artikel/form');
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
            'image' => 'mimes:png,jpg,jpeg|max:5048'
        ]);
        $newImageName = uniqid() . '.' . $request->image->extension();

        $request->image->move(public_path('assets/images'),$newImageName);
        Artikel::create([
            'judul' => $request->input('judul'),
            'desc' => $request->input('desc'),
            'image_path' => $newImageName,
            'user_id' => auth()->user()->id
        ]);

        return redirect('/admin/artikel')->with('message','Artikel telah ditambahkan');
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('admin/artikel/form')
            ->with('result', Artikel::where('id_artikel',$id)->first());
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'judul' => 'required',
            'desc' => 'required',
            'image' => 'mimes:png,jpg,jpeg|max:5048'
        ]);
        $newImageName = uniqid() . '.' . $request->image->extension();

        $request->image->move(public_path('assets/images'),$newImageName);
        Artikel::where('id_artikel',$id)
            ->update([
                'judul' => $request->input('judul'),
                'desc' => $request->input('desc'),
                'image_path' => $newImageName,
                'user_id' => '1'
            ]);

        return redirect('/admin/artikel')->with('message','Artikel telah diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $article = Artikel::where('id_artikel',$id);
        $article->delete();

        return redirect('/admin/artikel')->with('message','Artikel telah dihapus');
    }
}
