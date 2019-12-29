<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subfamilia extends Model
{
    protected $fillable = [
        'id', 'nombre',  'imagen','orden','familia'
    ];


    public function familiaR(){
    	return $this->belongsTo('App\Familia','familia');
    }
}

