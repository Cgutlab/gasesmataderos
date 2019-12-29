<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Postventa extends Model
{
    protected $table= 'postventas';

    protected $fillable = [
        'id', 'texto', 'orden','imagen'
    ];
}
