<?php

namespace App\Http\Controllers;

use App\Models\Publikasi;
use Illuminate\Http\Request;

class PublikasiDosenController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        return view('admin.publikasi-dosen.index')
            ->with('publikasis', Publikasi::orderBy('id_publikasi', 'ASC')->get());
    }
    public function create()
    {
        return view('admin/publikasi-dosen/form');
    }
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'id_dosen' => 'required'
        ]);
        Publikasi::create([
            'nama' => $request->input('nama'),
            'id_dosen' => $request->input('id_dosen')
        ]);

        return redirect('/admin/publikasi-dosen')->with('message','Publikasi Dosen telah ditambahkan');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        return view('admin/publikasi-dosen/form')
            ->with('result', Publikasi::where('id_publikasi',$id)->first());
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required',
            'id_dosen' => 'required'
        ]);
        Publikasi::where('id_publikasi',$id)
            ->update([
                'nama' => $request->input('nama'),
                'id_dosen' => $request->input('id_dosen')
            ]);

        return redirect('/admin/publikasi-dosen')->with('message','Publikasi Dosen telah diubah');
    }
    public function destroy($id)
    {
        $Dosen = Publikasi::where('id_publikasi',$id);
        $Dosen->delete();

        return redirect('/admin/publikasi-dosen')->with('message','Publikasi Dosen telah dihapus');
    }
}
