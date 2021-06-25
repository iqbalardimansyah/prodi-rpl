<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;

    public $primaryKey = 'id_artikel';
    protected $table = 'tb_artikel';
    protected $fillable = [
        'judul','desc','image_path','user_id'
    ];
}
