<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Servicio;

class ServicioController extends Controller
{
    public function index()
    {
        $servicios= Servicio::orderBy('orden','asc')->get();
        return view('adm.php.editarServicios')->with('servicios',$servicios);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('adm.php.crearServicio');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $servicio= new Servicio($request->all());
        $id= Servicio::all()->max('id');
        $newid= $id+1;
        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/servicio/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $servicio->imagen = 'imagenes/servicio/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $servicio->save();
        flash('Se ha registrado de forma exitosa')->success()->important();
        return redirect()->route('servicio.index');
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
        $servicio = Servicio::find($id);
        return view('adm.php.editarServicio')->with('servicio', $servicio);
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
        $cliente= Servicio::find($id);
        $cliente->texto= $request->texto;
        $cliente->orden= $request->orden;

        $id= Servicio::all()->max('id');
        $newid= $id+1;

        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/servicio/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $cliente->imagen = 'imagenes/servicio/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $cliente->save();
        
        flash('Se ha actualizado de forma exitosa')->success()->important();
        return redirect()->route('servicio.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cliente= Servicio::find($id);
        $cliente->delete();
        
        flash('Se ha eliminado exitosamente.')->success()->important();
        return redirect()->route('servicio.index');
    }

    
}
