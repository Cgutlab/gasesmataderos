<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\slider_home;
use App\slider_empresa;
use App\metadato;
use App\contenido_empresa;
use App\Contenido_solucion;
use App\Contenido_descarga;
use App\Contenido_cliente;
use App\Contenido_rubro;
use App\Contenido_producto;
use App\Contenido_aislacion;
use App\contenido_home;
use App\datos_empresa;
use App\Http\Requests\Contacto;
use App\Mail\Sendbymail;
use Illuminate\Support\Facades\Mail;
use App\producto;
use App\Familia;
use App\Subfamilia;
use App\Producto_destacado;
use App\galeria;
use App\Descarga;
use App\Servicio;
use App\Postventa;
use App\Cliente;
use App\Rubro;
use App\Minorista;
use App\Aislacion;
use App\galeria_trabajo;
use App;
use Config;
// use Mail; 

class PaginasController extends Controller
{
    
    public function index()
    {
        $sliders= slider_home::orderBy('orden','ASC')->get();
        $contenido= contenido_home::first();
        $destacados= Producto_destacado::orderBy('orden')->get();

        $metadato= metadato::where('seccion','home')->first();
        $active='home';
        return view('pages.home', [
            'sliders' => $sliders, 
            'contenido' => $contenido,
            'destacados' => $destacados,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }

    public function empresa()
    {    
        $contenido= contenido_empresa::first();
        $sliders= slider_empresa::orderBy('orden','ASC')->get();

        $metadato= metadato::where('seccion','empresa')->first();
        $active='empresa';
        return view('pages.empresa', [
            'contenido' => $contenido, 
            'sliders' => $sliders, 
            'metadato' => $metadato,
            'active' => $active/*,
            'rows' => $rows*/
        ]);
    }
    public function descargas()
    {
        $descargas= Descarga::orderBy('orden')->get();
        $contenido= Contenido_descarga::first();
        $metadato= metadato::where('seccion','garantia')->first();
        $active='descargas';
        return view('pages.descargas', [
            'descargas' => $descargas,
            'contenido' => $contenido,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }
    public function servicios()
    {
        $servicios= Servicio::orderBy('orden')->get();
        $metadato= metadato::where('seccion','servicios')->first();
        $active='servicios';
        return view('pages.servicios', [
            'servicios' => $servicios,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }

    public function postventas()
    {
        $postventas= Postventa::orderBy('orden')->get();
        $metadato= metadato::where('seccion','postventas')->first();
        $active='postventas';
        return view('pages.postventas', [
            'postventas' => $postventas,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }
  
    
   
    
    public function contacto()
    {
    
        $metadato= metadato::where('seccion','contacto')->first();
        $active='contacto';
        return view('pages.contacto', [
            'metadato' => $metadato,
            'active' => $active/*,
            'rows' => $rows*/
        ]);
    }

    public function enviarmail(Contacto $request)
    {   

        $dato= datos_empresa::where('tipo','email')->first();
        $nombre= $request->nombre;
        $email= $request->email;
        $apellido= $request->apellido;
        $telefono= $request->telefono;
        $mensaje= $request->mensaje;

        Mail::send('pages.mail', ['nombre' => $nombre, 'telefono' => $telefono, 'email' => $email, 'apellido' => $apellido, 'mensaje' => $mensaje], function ($message){

            $message->from($dato->descripcion, 'Gases Mataderos');

            $message->to($dato->descripcion);

            //Add a subject
            $message->subject("Mensaje Contacto");

        });
        if (Mail::failures()) {
            flash('Ha ocurrido un error.')->error()->important();
            return redirect()->route('contacto');
        }
        flash('El mensaje se ha enviado exitosamente.')->success()->important();
        return redirect()->route('contacto');
        
    }

    public function presupuesto()
    {
        $metadato= metadato::where('seccion','presupuesto')->first();
        $active='presupuesto';
        return view('pages.presupuesto', [
            'metadato' => $metadato,
            'active' => $active/*,
            'rows' => $rows*/
        ]);
    }
    public function enviarpresupuesto(Request $request)
    {   
       
        $dato= datos_empresa::where('tipo','email')->first();
        $nombre= $request->nombre;
        $email= $request->email;
        $localidad= $request->localidad;
        $telefono= $request->telefono;
        $detalles= $request->detalles;
        

        if ($request->hasFile('archivo')) {
            if ($request->file('archivo')->isValid()) {
                $file = $request->file('archivo');
                $path = public_path('imagenes/archivos/');
                $request->file('archivo')->move($path, '01_'.$file->getClientOriginalName());
                $archivo = 'imagenes/archivos/' . '01_'.$file->getClientOriginalName();
                
            }
        }

         Mail::send('pages.enviarpresupuesto', ['nombre' => $nombre, 'telefono' => $telefono, 'email' => $email, 'localidad' => $localidad, 'detalles' => $detalles], function ($message) use ($archivo){

            $message->from($dato->descripcion, 'Gases Mataderos');

            $message->to($dato->descripcion);

            //Attach file
            $message->attach($archivo);

            //Add a subject
            $message->subject("Presupuesto");

        });
        if (Mail::failures()) {
            flash('Ha ocurrido un error.')->error()->important();
            return redirect()->route('presupuesto');
        }
        flash('El mensaje se ha enviado exitosamente.')->success()->important();
        return redirect()->route('presupuesto');
    }
    public function consulta(Request $request)
    {   

        $dato= datos_empresa::where('tipo','email')->first();
        $nombre= $request->nombre;
        $email= $request->email;
        $empresa= $request->empresa;
        $mensaje= $request->mensaje;

        Mail::send('pages.mail2', ['nombre' => $nombre, 'empresa' => $empresa, 'email' => $email, 'mensaje' => $mensaje], function ($message){

            $message->from($dato->descripcion, 'Gases Mataderos');

            $message->to($dato->descripcion);

            //Add a subject
            $message->subject("Mensaje Contacto");

        });
        if (Mail::failures()) {
            flash('Ha ocurrido un error.')->error()->important();
            return redirect()->route('postventas');
        }
        flash('El mensaje se ha enviado exitosamente.')->success()->important();
        return redirect()->route('postventas');
        
    }
    
    public function busca()
    {
        $busca=0;
        
        $metadato= metadato::where('seccion','home')->first();
        $active='buscar';
        return view('pages.buscador', [
            'busca' => $busca,
            'metadato' => $metadato,
            'active' => $active/*,
            'rows' => $rows*/
        ]);
    }
    public function buscador(Request $request)
    {
        $buscar= $request->busca;
        $productos= producto::where('nombre',$buscar)->orWhere('nombre','like','%'.$buscar.'%')->get();
        $familias= Familia::where('nombre',$buscar)->orWhere('nombre','like','%'.$buscar.'%')->get();
        $subfamilias= Subfamilia::where('nombre',$buscar)->orWhere('nombre','like','%'.$buscar.'%')->get();
        $busca=1;
        $metadato= metadato::where('seccion','home')->first();
        $active='buscar';
        return view('pages.buscador', [
            'busca' => $busca,
            'productos' => $productos,
            'familias' => $familias,
            'subfamilias' => $subfamilias,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }
        
   public function familias()
    {
        $familias = Familia::orderBy('orden')->get();
        $metadato= metadato::where('seccion','productos')->first();
        $active='productos';
        return view('pages.familias', [
            'familias' => $familias,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }
    public function subfamilias($id)
    {
        $familia = Familia::where('id',$id)->first();
        $familias = Familia::orderBy('orden')->get();
        $subfamilias = Subfamilia::where('familia',$id)->orderBy('orden')->get();
        $metadato= metadato::where('seccion','productos')->first();
        $active='productos';
        return view('pages.subfamilias', [
            'subfamilias' => $subfamilias,
            'familias' => $familias,
            'familia' => $familia,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }

    public function productos($id)
    {
        $subfamilia = Subfamilia::where('id',$id)->first();
        $familia = Familia::where('id',$subfamilia->familia)->first();

        $familias = Familia::orderBy('orden')->get();
        $subfamilias = Subfamilia::where('familia',$familia->id)->orderBy('orden')->get();

        $productos = producto::where('subfamilia',$id)->orderBy('orden')->get();
        $metadato= metadato::where('seccion','productos')->first();
        $active='productos';

        return view('pages.productos', [
            'subfamilia' => $subfamilia,
            'familia' => $familia,
            'subfamilias' => $subfamilias,
            'familias' => $familias,
            'productos' => $productos,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }

    public function producto($id)
    {
        $producto = producto::where('id',$id)->with('relacion1','relacion2','relacion3')->first();
        $subfamilia = Subfamilia::where('id',$producto->subfamilia)->first();
        $familia = Familia::where('id',$subfamilia->familia)->first();

        $familias = Familia::orderBy('orden')->get();
        $subfamilias = Subfamilia::where('id',$familia->id)->orderBy('orden')->get();
        $productos = producto::where('subfamilia',$subfamilia->id)->orderBy('orden')->get();

        $galerias= galeria::where('id_producto',$id)->get();
        $metadato= metadato::where('seccion','productos')->first();
        $active='productos';

        return view('pages.producto', [
            'subfamilia' => $subfamilia,
            'familia' => $familia,
            'subfamilias' => $subfamilias,
            'familias' => $familias,
            'productos' => $productos,
            'producto' => $producto,
            'galerias' => $galerias,
            'metadato' => $metadato,
            'active' => $active
        ]);
    }

    

   
}
