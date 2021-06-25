<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Publikasi extends Model
{
    use HasFactory;
    public $primaryKey = 'id_publikasi';
    protected $table = 'tb_publikasi_dosen';
    protected $fillable = [
        'id_dosen','nama'
    ];
    public function dosen()
    {
        return $this->hasOne('\App\Models\Dosen','id_dosen','id_dosen');
    }
}
