<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Berita extends Model
{
    use HasFactory;

    public $primaryKey = 'id_berita';
    protected $table = 'tb_berita';
    protected $fillable = [
        'judul','desc','image_path'
    ];
}
