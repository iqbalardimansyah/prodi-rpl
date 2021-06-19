<?php

use App\Http\Controllers\IndexController;
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
Route::get('/', [IndexController::class, 'index']);

Route::get('/sejarah-upi', [IndexController::class, 'sejarah']);
Route::get('/upi-kampus-cibiru', [IndexController::class, 'kamda']);
Route::get('/program-studi-rpl', [IndexController::class, 'rpl']);

Route::get('/visi-dan-misi', [IndexController::class, 'visimisi']);
Route::get('/staff', [IndexController::class, 'staff']);
Route::get('/struktur-organisasi', [IndexController::class, 'struktur']);
Route::get('/fasilitas', [IndexController::class, 'fasilitas']);

Route::get('/prestasi', [IndexController::class, 'prestasi']);
Route::get('/alumni', [IndexController::class, 'alumni']);

Route::get('/kurikulum', [IndexController::class, 'kurikulum']);
Route::get('/penelitian', [IndexController::class, 'penelitian']);
Route::get('/pengabdian', [IndexController::class, 'pengabdian']);

Route::get('/berita', [IndexController::class, 'berita']);
Route::get('/artikel', [IndexController::class, 'artikel']);
Route::get('/prospek-karir', [IndexController::class, 'prospek']);
Route::get('/jalur-seleksi-masuk-ptn-upi', [IndexController::class, 'seleksi']);

Route::get('/kontak', [IndexController::class, 'kontak']);
// Route::get('/', function () {
//     return view('welcome');
// });
