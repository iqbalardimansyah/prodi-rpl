<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    use HasFactory;
    public $primaryKey = 'id_dosen';
    protected $table = 'tb_dosen';
    protected $fillable = [
        'nama','image_path'
    ];
}
