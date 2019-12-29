<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class contenido_home extends Model
{
    protected $fillable = [
        'id',  'titulo', 'texto','imagen','link','tecnologia','tecnologia_texto','servicio','servicio_texto','trayectoria','trayectoria_texto'
    ];
}
