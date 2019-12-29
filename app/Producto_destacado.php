<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto_destacado extends Model
{
    protected $table= 'producto_destacados';

    protected $fillable = [
        'id', 'nombre',  'imagen', 'link', 'orden'
    ];
}
