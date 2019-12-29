<?php

namespace App\Http\Controllers\adm;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\producto;
use App\Subfamilia;
class ProductoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productos= producto::orderBy('subfamilia','asc')->with('subfamiliaData')->get();
        return view('adm.php.editarProductos')->with('productos',$productos);
    }

    public function create()
    {
        $productos = producto::orderBy('nombre')->pluck('nombre','id')->toArray();
        $subfamilias = Subfamilia::all()->pluck('nombre','id')->toArray();
        return view('adm.php.crearProducto')->with('subfamilias',$subfamilias)->with('productos',$productos);
    }

    public function store(Request $request)
    {
        $producto= new producto($request->all());
        $id= producto::all()->max('id');
        $newid= $id+1;
        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/producto/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $producto->imagen = 'imagenes/producto/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        if ($request->hasFile('pdf')) {
            if ($request->file('pdf')->isValid()) {
                $file = $request->file('pdf');
                $path = public_path('imagenes/producto/');
                $request->file('pdf')->move($path, $newid.'_'.$file->getClientOriginalName());
                $producto->pdf = 'imagenes/producto/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $producto->save();
        
        flash('Se ha registrado de forma exitosa')->success()->important();
        return redirect()->route('producto.index');
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

    
    public function edit($id)
    {
        $producto = producto::find($id);
        $productos = producto::orderBy('nombre')->pluck('nombre','id')->toArray();
        $subfamilias = Subfamilia::all()->pluck('nombre','id')->toArray();
        return view('adm.php.editarProducto')->with('producto', $producto)
        ->with('productos', $productos)
        ->with('subfamilias', $subfamilias);
    }

    public function update(Request $request, $id)
    {
        $producto= producto::find($id);
        $producto->nombre = $request->nombre;
        $producto->texto2 = $request->texto2;
        $producto->texto = $request->texto;
        $producto->relacionado1 = $request->relacionado1;
        $producto->relacionado2 = $request->relacionado2;
        $producto->relacionado3 = $request->relacionado3;
        $producto->subfamilia = $request->subfamilia;
        $producto->orden = $request->orden;

        $id= producto::all()->max('id');
        $newid= $id+1;

        if ($request->hasFile('imagen')) {
            if ($request->file('imagen')->isValid()) {
                $file = $request->file('imagen');
                $path = public_path('imagenes/producto/');
                $request->file('imagen')->move($path, $newid.'_'.$file->getClientOriginalName());
                $producto->imagen = 'imagenes/producto/' . $newid.'_'.$file->getClientOriginalName();
            }
        }

        if ($request->hasFile('pdf')) {
            if ($request->file('pdf')->isValid()) {
                $file = $request->file('pdf');
                $path = public_path('imagenes/producto/');
                $request->file('pdf')->move($path, $newid.'_'.$file->getClientOriginalName());
                $producto->pdf = 'imagenes/producto/' . $newid.'_'.$file->getClientOriginalName();
            }
        }
        
        $producto->save();
        
        flash('Se ha actualizado de forma exitosa')->success()->important();
        return redirect()->route('producto.index');
    }

    
    public function destroy($id)
    {
        $producto= producto::find($id);
        $producto -> delete();
        
        flash('Se ha eliminado exitosamente.')->success()->important();
        return redirect()->route('producto.index');
    }
}
