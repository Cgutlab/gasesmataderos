<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class producto extends Model
{
    protected $table= 'productos';

    protected $fillable = [
        'id', 'nombre',  'imagen', 'texto', 'texto2','orden', 'pdf','relacionado1','relacionado2','relacionado3','subfamilia'
    ];

    public function subfamiliaData(){
    	return $this->belongsTo('App\Subfamilia','subfamilia');
    }

    public function relacion1(){
    	return $this->belongsTo('App\producto','relacionado1');
    }

    public function relacion2(){
        return $this->belongsTo('App\producto','relacionado2');
    }

    public function relacion3(){
        return $this->belongsTo('App\producto','relacionado3');
    }
}
