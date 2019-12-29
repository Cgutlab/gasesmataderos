<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Subfamilia;
use App\Familia;

class SubfamiliaController extends Controller
{
     public function index()
    {
        $servicios= Subfamilia::orderBy('familia','asc')->with('familiaR')->get();
        return view('adm.php.editarSubFamilias')->with('subfamilias',$servicios);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $familias = Familia::all()->pluck('nombre','id')->toArray();
        return view('adm.php.crearSubFamilia')->with('familias',$familias);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $servicio= new Subfamilia($request->all());
        $id= Subfamilia::all()->max('id');
        $newid= $id+1;
        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/subfamilia/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $servicio->imagen = 'imagenes/subfamilia/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $servicio->save();
        flash('Se ha registrado de forma exitosa')->success()->important();
        return redirect()->route('subfamilia.index');
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
        $servicio = Subfamilia::find($id);
        $familias = Familia::all()->pluck('nombre','id')->toArray();
        return view('adm.php.editarSubFamilia')->with('familia', $servicio)->with('familias', $familias);
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
        $cliente= Subfamilia::find($id);
        $cliente->nombre= $request->nombre;
        $cliente->familia= $request->familia;
        $cliente->orden= $request->orden;

        $id= Subfamilia::all()->max('id');
        $newid= $id+1;

        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/subfamilia/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $cliente->imagen = 'imagenes/subfamilia/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $cliente->save();
        
        flash('Se ha actualizado de forma exitosa')->success()->important();
        return redirect()->route('subfamilia.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cliente= Subfamilia::find($id);
        $cliente->delete();
        
        flash('Se ha eliminado exitosamente.')->success()->important();
        return redirect()->route('subfamilia.index');
    }
}
