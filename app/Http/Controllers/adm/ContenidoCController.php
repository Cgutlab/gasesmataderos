<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contenido_cliente;

class ContenidoCController extends Controller
{
    public function index()
    {
        $contenido= Contenido_cliente::first();
        return view('adm.php.editarContenidosCli')->with('contenido',$contenido);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        $contenido = Contenido_cliente::find($id);

       return view('adm.php.editarContenidoCli')->with('contenido', $contenido);
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
        //
    }
    public function update_contenido(Request $request)
    {
        $id= Contenido_cliente::all()->max('id');
        $newid= $id+1;

        $contenido=Contenido_cliente::find($request->id);
       

        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/Contenido_cliente/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $contenido->imagen = 'imagenes/Contenido_cliente/' . $newid.'_'.$file->getClientOriginalName();
            }
        } 

     
        $contenido->save();
        
        flash('Se ha actualizado de forma exitosa')->success()->important();
        return redirect()->route('contenidoclient.index');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
