<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Familia extends Model
{
    protected $fillable = [
        'id', 'nombre',  'imagen','orden'
    ];
}
