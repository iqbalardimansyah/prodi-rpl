<?php

use App\Http\Controllers\IndexController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\BeritaController;
use App\Http\Controllers\DosenController;
use App\Http\Controllers\PendidikanDosenController;
use App\Http\Controllers\PengajaranDosenController;
use App\Http\Controllers\PublikasiDosenController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Auth::routes();

Route::get('/', [IndexController::class, 'index']);

Route::get('/sejarah-upi', [IndexController::class, 'sejarah']);
Route::get('/upi-kampus-cibiru', [IndexController::class, 'kamda']);
Route::get('/program-studi-rpl', [IndexController::class, 'rpl']);

Route::get('/visi-dan-misi', [IndexController::class, 'visimisi']);
Route::get('/staff', [IndexController::class, 'staff']);
Route::get('/dosen/{id}', [IndexController::class, 'detaildosen']);
Route::get('/struktur-organisasi', [IndexController::class, 'struktur']);
Route::get('/fasilitas', [IndexController::class, 'fasilitas']);

Route::get('/prestasi', [IndexController::class, 'prestasi']);
Route::get('/alumni', [IndexController::class, 'alumni']);

Route::get('/kurikulum', [IndexController::class, 'kurikulum']);
Route::get('/penelitian', [IndexController::class, 'penelitian']);
Route::get('/pengabdian', [IndexController::class, 'pengabdian']);

Route::get('/berita', [IndexController::class, 'berita']);
Route::get('/berita/{id}', [IndexController::class, 'detail_berita']);

Route::get('/artikel', [IndexController::class, 'artikel']);
Route::get('/artikel/{id}', [IndexController::class, 'detail_artikel']);

Route::get('/prospek-karir', [IndexController::class, 'prospek']);
Route::get('/jalur-seleksi-masuk-ptn-upi', [IndexController::class, 'seleksi']);

Route::get('/kontak', [IndexController::class, 'kontak']);

//Admin
Route::get('/admin', [AdminController::class, 'index']);
//user

// Route::resource('/admin/user', [UserController::class]);

Route::get('/admin/user', [UserController::class, 'index']);

Route::get('/admin/user/add', [UserController::class, 'create']);
Route::post('/admin/user/add', [UserController::class, 'store']);

Route::get('/admin/user/{id}/edit', [UserController::class, 'edit']);


Route::patch('/admin/user/{id}/edit', [UserController::class, 'update']);

Route::delete('admin/user/{id}/delete', [UserController::class, 'destroy']);

//artikel

Route::get('/admin/artikel', [ArtikelController::class, 'index']);

Route::get('/admin/artikel/add', [ArtikelController::class, 'create']);
Route::post('/admin/artikel/add', [ArtikelController::class, 'store']);

Route::get('/admin/artikel/{id}/edit', [ArtikelController::class, 'edit']);


Route::patch('/admin/artikel/{id}/edit', [ArtikelController::class, 'update']);

Route::delete('admin/artikel/{id}/delete', [ArtikelController::class, 'destroy']);

//berita

Route::get('/admin/berita', [BeritaController::class, 'index']);

Route::get('/admin/berita/add', [BeritaController::class, 'create']);
Route::post('/admin/berita/add', [BeritaController::class, 'store']);

Route::get('/admin/berita/{id}/edit', [BeritaController::class, 'edit']);


Route::patch('/admin/berita/{id}/edit', [BeritaController::class, 'update']);

Route::delete('admin/berita/{id}/delete', [BeritaController::class, 'destroy']);

//dosen
Route::get('/admin/dosen', [DosenController::class, 'index']);

Route::get('/admin/dosen/add', [DosenController::class, 'create']);
Route::post('/admin/dosen/add', [DosenController::class, 'store']);

Route::get('/admin/dosen/{id}/edit', [DosenController::class, 'edit']);


Route::patch('/admin/dosen/{id}/edit', [DosenController::class, 'update']);

Route::delete('admin/dosen/{id}/delete', [DosenController::class, 'destroy']);

//pengajaran-dosen
Route::get('/admin/pengajaran-dosen', [PengajaranDosenController::class, 'index']);

Route::get('/admin/pengajaran-dosen/add', [PengajaranDosenController::class, 'create']);
Route::post('/admin/pengajaran-dosen/add', [PengajaranDosenController::class, 'store']);

Route::get('/admin/pengajaran-dosen/{id}/edit', [PengajaranDosenController::class, 'edit']);


Route::patch('/admin/publpengajaranikasi-dosen/{id}/edit', [PengajaranDosenController::class, 'update']);

Route::delete('admin/pengajaran-dosen/{id}/delete', [PengajaranDosenController::class, 'destroy']);

//publikasi-dosen
Route::get('/admin/publikasi-dosen', [PublikasiDosenController::class, 'index']);

Route::get('/admin/publikasi-dosen/add', [PublikasiDosenController::class, 'create']);
Route::post('/admin/publikasi-dosen/add', [PublikasiDosenController::class, 'store']);

Route::get('/admin/publikasi-dosen/{id}/edit', [PublikasiDosenController::class, 'edit']);


Route::patch('/admin/publikasi-dosen/{id}/edit', [PublikasiDosenController::class, 'update']);

Route::delete('admin/publikasi-dosen/{id}/delete', [PublikasiDosenController::class, 'destroy']);

//pendidikan-dosen
Route::get('/admin/pendidikan-dosen', [PendidikanDosenController::class, 'index']);

Route::get('/admin/pendidikan-dosen/add', [PendidikanDosenController::class, 'create']);
Route::post('/admin/pendidikan-dosen/add', [PendidikanDosenController::class, 'store']);

Route::get('/admin/pendidikan-dosen/{id}/edit', [PendidikanDosenController::class, 'edit']);


Route::patch('/admin/pendidikan-dosen/{id}/edit', [PendidikanDosenController::class, 'update']);

Route::delete('admin/pendidikan-dosen/{id}/delete', [PendidikanDosenController::class, 'destroy']);

// Route::get('/', function () {
//     return view('welcome');
// });


// Route::get('/home', [\App\Http\Controllers\HomeController::class, 'index'])->name('home');

