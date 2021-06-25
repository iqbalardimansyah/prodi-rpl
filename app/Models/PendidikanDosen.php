<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PendidikanDosen extends Model
{
    use HasFactory;
    public $primaryKey = 'id_pendidikan';
    protected $table = 'tb_pendidikan_dosen';
    protected $fillable = [
        'id_dosen','nama'
    ];
    public function dosen()
    {
        return $this->hasOne('\App\Models\Dosen','id_dosen','id_dosen');
    }
}
