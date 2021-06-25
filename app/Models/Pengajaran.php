<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengajaran extends Model
{
    use HasFactory;
    public $primaryKey = 'id_pengajaran';
    protected $table = 'tb_pengajaran_dosen';
    protected $fillable = [
        'id_dosen','nama'
    ];
    public function dosen()
    {
        return $this->hasOne('\App\Models\Dosen','id_dosen','id_dosen');
    }
}
