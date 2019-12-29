<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Descarga;

class DescargasController extends Controller
{
    
    public function index()
    {
        $descargas= Descarga::orderBy('orden','asc')->get();
        return view('adm.php.editarDescargas')->with('descargas',$descargas);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('adm.php.crearDescarga');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $descarga= new Descarga($request->all());

        $id= Descarga::all()->max('id');
        $newid= $id+1;
        
        if ($request->hasFile('ficha')) {
            if ($request->file('ficha')->isValid()) {
                $file = $request->file('ficha');
                $path = public_path('imagenes/descarga/');
                $request->file('ficha')->move($path, $newid.'_'.$file->getClientOriginalName());
                $descarga->ficha = 'imagenes/descarga/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        $descarga->save();
        flash('Se ha registrado de forma exitosa')->success()->important();
        return redirect()->route('descarga.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $descarga = Descarga::find($id);
        return view('adm.php.editarDescarga')->with('descarga', $descarga);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $descarga= Descarga::find($id);
        $descarga->nombre= $request->nombre;
        $descarga->orden= $request->orden;

        $id= Descarga::all()->max('id');
        $newid= $id+1;

        if ($request->hasFile('ficha')) {
            if ($request->file('ficha')->isValid()) {
                $file = $request->file('ficha');
                $path = public_path('imagenes/descarga/');
                $request->file('ficha')->move($path, $newid.'_'.$file->getClientOriginalName());
                $descarga->ficha = 'imagenes/descarga/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        $descarga->save();
        
        flash('Se ha actualizado de forma exitosa')->success()->important();
        return redirect()->route('descarga.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $descarga= Descarga::find($id);
        $descarga ->delete();
        
        flash('Se ha eliminado exitosamente.')->success()->important();
        return redirect()->route('descarga.index');
    }
}
