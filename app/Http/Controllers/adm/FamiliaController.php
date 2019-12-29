<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Familia;

class FamiliaController extends Controller
{
     public function index()
    {
        $servicios= Familia::orderBy('orden','asc')->get();
        return view('adm.php.editarFamilias')->with('familias',$servicios);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('adm.php.crearFamilia');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $servicio= new Familia($request->all());
        $id= Familia::all()->max('id');
        $newid= $id+1;
        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/familia/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $servicio->imagen = 'imagenes/familia/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $servicio->save();
        flash('Se ha registrado de forma exitosa')->success()->important();
        return redirect()->route('familia.index');
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
        $servicio = Familia::find($id);
        return view('adm.php.editarFamilia')->with('familia', $servicio);
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
        $cliente= Familia::find($id);
        $cliente->nombre= $request->nombre;
        $cliente->orden= $request->orden;

        $id= Familia::all()->max('id');
        $newid= $id+1;

        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/familia/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $cliente->imagen = 'imagenes/familia/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $cliente->save();
        
        flash('Se ha actualizado de forma exitosa')->success()->important();
        return redirect()->route('familia.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cliente= Familia::find($id);
        $cliente->delete();
        
        flash('Se ha eliminado exitosamente.')->success()->important();
        return redirect()->route('familia.index');
    }
}
