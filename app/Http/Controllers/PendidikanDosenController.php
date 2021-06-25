<?php

namespace App\Http\Controllers;

use App\Models\PendidikanDosen;
use Illuminate\Http\Request;

class PendidikanDosenController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        return view('admin.pendidikan-dosen.index')
            ->with('pendidikans', PendidikanDosen::orderBy('id_pendidikan', 'ASC')->get());
    }
    public function create()
    {
        return view('admin/pendidikan-dosen/form');
    }
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'id_dosen' => 'required'
        ]);
        PendidikanDosen::create([
            'nama' => $request->input('nama'),
            'id_dosen' => $request->input('id_dosen')
        ]);

        return redirect('/admin/pendidikan-dosen')->with('message','Pendidikan Dosen telah ditambahkan');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        return view('admin/pendidikan-dosen/form')
            ->with('result', PendidikanDosen::where('id_pendidikan',$id)->first());
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required',
            'id_dosen' => 'required'
        ]);
        PendidikanDosen::where('id_pendidikan',$id)
            ->update([
                'nama' => $request->input('nama'),
                'id_dosen' => $request->input('id_dosen')
            ]);

        return redirect('/admin/pendidikan-dosen')->with('message','Pendidikan Dosen telah diubah');
    }
    public function destroy($id)
    {
        $Dosen = PendidikanDosen::where('id_pendidikan',$id);
        $Dosen->delete();

        return redirect('/admin/pendidikan-dosen')->with('message','Pendidikan Dosen telah dihapus');
    }
}
