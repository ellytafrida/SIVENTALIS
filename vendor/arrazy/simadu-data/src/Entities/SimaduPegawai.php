<?php

namespace Razy\SimaduData\Entities;

use Illuminate\Database\Eloquent\Model;

class SimaduPegawai extends Model
{
    protected $keyType = 'string';
    public $incrementing = false;
    protected $table = 'simadu__pegawai';
}
