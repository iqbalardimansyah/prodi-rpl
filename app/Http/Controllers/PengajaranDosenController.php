<?php

namespace App\Http\Controllers;

use App\Models\Pengajaran;
use Illuminate\Http\Request;

class PengajaranDosenController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        return view('admin.pengajaran-dosen.index')
            ->with('pengajarans', Pengajaran::orderBy('id_pengajaran', 'ASC')->get());
    }
    public function create()
    {
        return view('admin/pengajaran-dosen/form');
    }
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'id_dosen' => 'required'
        ]);
        Pengajaran::create([
            'nama' => $request->input('nama'),
            'id_dosen' => $request->input('id_dosen')
        ]);

        return redirect('/admin/pengajaran-dosen')->with('message','Pengajaran Dosen telah ditambahkan');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        return view('admin/pengajaran-dosen/form')
            ->with('result', Pengajaran::where('id_pengajaran',$id)->first());
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required',
            'id_dosen' => 'required'
        ]);
        Pengajaran::where('id_pendidikan',$id)
            ->update([
                'nama' => $request->input('nama'),
                'id_dosen' => $request->input('id_dosen')
            ]);

        return redirect('/admin/pengajaran-dosen')->with('message','Pengajaran Dosen telah diubah');
    }
    public function destroy($id)
    {
        $Dosen = Pengajaran::where('id_pengajaran',$id);
        $Dosen->delete();

        return redirect('/admin/pengajaran-dosen')->with('message','Pengajaran Dosen telah dihapus');
    }
}
