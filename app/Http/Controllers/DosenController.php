<?php

namespace App\Http\Controllers;

use App\Models\Dosen;
use Illuminate\Http\Request;

class DosenController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        return view('admin.dosen.index')
            ->with('dosens', Dosen::orderBy('id_dosen', 'ASC')->get());
    }
    public function create()
    {
        return view('admin/dosen/form');
    }
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'image' => 'required|mimes:png,jpg,jpeg|max:5048'
        ]);
        $newImageName = uniqid() . '.' . $request->image->extension();

        $request->image->move(public_path('assets/images/dosen'),$newImageName);
        Dosen::create([
            'nama' => $request->input('nama'),
            'image_path' => $newImageName
        ]);

        return redirect('/admin/dosen')->with('message','Dosen telah ditambahkan');
    }
    public function show($id)
    {
        //
    }
    public function edit($id)
    {
        return view('admin/dosen/form')
            ->with('result', Dosen::where('id_dosen',$id)->first());
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'nama' => 'required',
        ]);
        Dosen::where('id_dosen',$id)
            ->update([
                'nama' => $request->input('nama')
            ]);

        return redirect('/admin/dosen')->with('message','Dosen telah diubah');
    }
    public function destroy($id)
    {
        $Dosen = Dosen::where('id_dosen',$id);
        $Dosen->delete();

        return redirect('/admin/dosen')->with('message','Dosen telah dihapus');
    }
}
