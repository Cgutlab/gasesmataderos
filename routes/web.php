<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::resource('/','PaginasController');
Route::get('/empresa',[
				'uses'=>'PaginasController@empresa',
				'as'=>'empresa'
		]);
Route::get('/descargas',[
				'uses'=>'PaginasController@descargas',
				'as'=>'descargas'
		]);
Route::get('/presupuesto',[
				'uses'=>'PaginasController@presupuesto',
				'as'=>'presupuesto'
		]);
Route::get('/enviarpresupuesto',[
				'uses'=>'PaginasController@enviarpresupuesto',
				'as'=>'enviarpresupuesto'
		]);
Route::get('/servicios',[
				'uses'=>'PaginasController@servicios',
				'as'=>'servicios'
		]);
Route::get('/postventas',[
				'uses'=>'PaginasController@postventas',
				'as'=>'postventas'
		]);
Route::get('/rubros',[
				'uses'=>'PaginasController@rubros',
				'as'=>'rubros'
		]);

Route::get('/soluciones',[
				'uses'=>'PaginasController@soluciones',
				'as'=>'soluciones'
		]);
Route::get('/minoristas',[
				'uses'=>'PaginasController@minoristas',
				'as'=>'minoristas'
		]);


Route::get('/contacto',[
				'uses'=>'PaginasController@contacto',
				'as'=>'contacto'
		]);
Route::post('contacto/enviarmail',[
				'uses'=>'PaginasController@enviarmail',
				'as'=>'contacto.enviarmail'
		]);
Route::post('contacto/consulta',[
				'uses'=>'PaginasController@consulta',
				'as'=>'contacto.consulta'
		]);
Route::get('/busca',[
				'uses'=>'PaginasController@busca',
				'as'=>'busca'
		]);
Route::post('/buscador',[
				'uses'=>'PaginasController@buscador',
				'as'=>'buscador'
		]);
Route::get('familias',[
				'uses'=>'PaginasController@familias',
				'as'=>'familias'
		]);
Route::get('{id}/subfamilias',[
				'uses'=>'PaginasController@subfamilias',
				'as'=>'subfamilias'
		]);
Route::get('{id}/productos',[
				'uses'=>'PaginasController@productos',
				'as'=>'productos'
		]);
Route::get('{id}/productoind',[
				'uses'=>'PaginasController@producto',
				'as'=>'productoind'
		]);

Route::get('/aislaciones',[
				'uses'=>'PaginasController@aislaciones',
				'as'=>'aislaciones'
		]);
Route::get('{id}/aislacion',[
				'uses'=>'PaginasController@aislacion',
				'as'=>'aislacionind'
		]);


/*--------------------------------------Administrador---------------------------------*/

Route::group(['prefix' => 'adm'],function(){
	Route::get('login', function () {  //PAGINA LOGIN
	    return view('adm.login');
	});

 	Route::resource('login','adm\LoginController'); //CONTROLADOR LOGIN
	Route::post('login/login',[
				'uses'=>'adm\LoginController@login',
				'as'=>'adm.login'
    ]);
});


Route::group(['prefix' => 'adm', 'middleware' => 'admin'], function(){ /*Grupo de rutas para el ADM */
	
    Route::get('/', function () {
		    return view('adm.index');
	});

    Route::resource('usuario','adm\UsuarioController'); //CONTROLADOR tabla usuario
    Route::get('usuario/{id}/destroy',[
				'uses'=>'adm\UsuarioController@destroy',
				'as'=>'usuario.destroy'
		]);
	Route::post('usuario/update-usuario',[
				'uses'=>'adm\UsuarioController@update_usuario',
				'as'=>'usuario.update_usuario'
    ]);

    Route::resource('metadato','adm\MetadatoController'); //CONTROLADOR tabla metadato
	Route::post('metadato/update-metadato',[
				'uses'=>'adm\MetadatoController@update_metadato',
				'as'=>'metadato.update_metadato'
    ]);

    Route::resource('datos','adm\DatosController'); //CONTROLADOR tabla Datos empresa
	Route::post('datos/update-dato',[
				'uses'=>'adm\DatosController@update_dato',
				'as'=>'datos.update_dato'
    ]);

    Route::resource('datos','adm\DatosController'); //CONTROLADOR tabla Datos empresa
	Route::post('datos/update-dato',[
				'uses'=>'adm\DatosController@update_dato',
				'as'=>'datos.update_dato'
    ]);

    Route::resource('logos','adm\LogosController'); //CONTROLADOR tabla Datos empresa
	Route::post('logos/update-logo',[
				'uses'=>'adm\LogosController@update_logo',
				'as'=>'logos.update_logo'
    ]);

    Route::resource('redes','adm\RedesController'); //CONTROLADOR tabla usuario
    Route::get('redes/{id}/destroy',[
				'uses'=>'adm\RedesController@destroy',
				'as'=>'redes.destroy'
		]);
	Route::post('redes/update-redes',[
				'uses'=>'adm\RedesController@update_redes',
				'as'=>'redes.update_redes'
    ]);

/*--------------------------------------------------------------------------------*/
    Route::resource('sliderhome','adm\SliderhomeController'); //CONTROLADOR tabla usuario
    Route::get('sliderhome/{id}/destroy',[
				'uses'=>'adm\SliderhomeController@destroy',
				'as'=>'sliderhome.destroy'
		]);
	Route::post('sliderhome/update-slider',[
				'uses'=>'adm\SliderhomeController@update_slider',
				'as'=>'sliderhome.update_slider'
    ]);

   
    Route::resource('destacados','adm\DestacadosController'); //CONTROLADOR tabla Destacados
	Route::post('destacados/update-destacado',[
				'uses'=>'adm\DestacadosController@update_destacado',
				'as'=>'destacados.update_destacado'
    ]);

	Route::resource('contenidohome','adm\ContenidoHomeController'); //CONTROLADOR tabla Contenido 
	Route::post('contenidohome/update-contenido',[				  //  Empresa
				'uses'=>'adm\ContenidoHomeController@update_contenido',
				'as'=>'contenidohome.update_contenido'
    ]);

/*-----------------------------------------EMPRESA--------------------------------*/
	Route::resource('slideremp','adm\SliderempController'); //CONTROLADOR tabla Slider Home
    Route::get('slideremp/{id}/destroy',[
				'uses'=>'adm\SliderempController@destroy',
				'as'=>'slideremp.destroy'
		]);
	Route::post('slideremp/update-slider',[
				'uses'=>'adm\SliderempController@update_slider',
				'as'=>'slideremp.update_slider'
    ]);


    Route::resource('contenidoemp','adm\contenidoEmpController'); //CONTROLADOR tabla Contenido 
	Route::post('contenidoemp/update-contenido',[				  //  Empresa
				'uses'=>'adm\contenidoEmpController@update_contenido',
				'as'=>'contenidoemp.update_contenido'
    ]);

/*---------------------------------------PRODUCTOS-------------------------------------------*/
	

	Route::resource('producto','adm\ProductoController'); //CONTROLADOR tabla Contenido 
    Route::get('producto/{id}/destroy',[
				'uses'=>'adm\ProductoController@destroy',
				'as'=>'producto.destroy'
	]);

	Route::resource('familia','adm\FamiliaController'); //CONTROLADOR tabla Contenido 
	Route::get('familia/{id}/destroy',[
				'uses'=>'adm\FamiliaController@destroy',
				'as'=>'familia.destroy'
	]);
	Route::resource('subfamilia','adm\SubfamiliaController'); //CONTROLADOR tabla Contenido 
	Route::get('subfamilia/{id}/destroy',[
				'uses'=>'adm\SubfamiliaController@destroy',
				'as'=>'subfamilia.destroy'
	]);

	Route::resource('contenidopro','adm\ContenidoProController'); //CONTROLADOR tabla Contenido 
	Route::post('contenidopro/update-contenido',[				  //  Empresa
				'uses'=>'adm\ContenidoProController@update_contenido',
				'as'=>'contenidopro.update_contenido'
    ]);

    Route::resource('galeria','adm\GaleriaController');
    Route::get('galeria/{id}/destroy',[
				'uses'=>'adm\GaleriaController@destroy',
				'as'=>'galeria.destroy'
		]);
    Route::get('galeria/{id}/index',[
				'uses'=>'adm\GaleriaController@index',
				'as'=>'galeria.index'
		]);
    Route::get('galeria/{id}/create',[
				'uses'=>'adm\GaleriaController@create',
				'as'=>'galeria.create'
		]);
	Route::post('galeria/update-slider',[
				'uses'=>'adm\GaleriaController@update_slider',
				'as'=>'galeria.update_slider'
    ]);

    Route::resource('color','adm\ColorController');
    Route::get('color/{id}/destroy',[
				'uses'=>'adm\ColorController@destroy',
				'as'=>'color.destroy'
		]);
    Route::get('color/{id}/index',[
				'uses'=>'adm\ColorController@index',
				'as'=>'color.index'
		]);
    Route::get('color/{id}/create',[
				'uses'=>'adm\ColorController@create',
				'as'=>'color.create'
		]);
	Route::post('color/update-color',[
				'uses'=>'adm\ColorController@update_color',
				'as'=>'color.update_color'
    ]);



	

	/*---------------------------------------Descargas----------------------------------*/
	Route::resource('descarga','adm\DescargasController');
	Route::resource('contenidodes','adm\ContenidoDController'); //CONTROLADOR tabla Contenido 
	Route::post('contenidodes/update-contenido',[				  //  Empresa
				'uses'=>'adm\ContenidoDController@update_contenido',
				'as'=>'contenidodes.update_contenido'
    ]);

	Route::resource('servicio','adm\ServicioController');
	Route::get('servicio/{id}/destroy',[
				'uses'=>'adm\ServicioController@destroy',
				'as'=>'servicio.destroy'
	]);

	Route::resource('postventa','adm\PostventaController');
	Route::resource('cliente','adm\ClienteController');
	Route::resource('contenidoclient','adm\ContenidoCController'); //CONTROLADOR tabla Contenido 
	Route::post('contenidoclient/update-contenido',[				  //  Empresa
				'uses'=>'adm\ContenidoCController@update_contenido',
				'as'=>'contenidoclient.update_contenido'
    ]);

    Route::resource('rubro','adm\RubrosController');
	Route::resource('contenidorubro','adm\ContenidoRController'); //CONTROLADOR tabla Contenido 
	Route::post('contenidorubro/update-contenido',[				  //  Empresa
				'uses'=>'adm\ContenidoRController@update_contenido',
				'as'=>'contenidorubro.update_contenido'
    ]);

	Route::resource('solucion','adm\SolucionesController');
	Route::resource('contenidosolucion','adm\ContenidoSController'); //CONTROLADOR tabla Contenido 
	Route::post('contenidosolucion/update-contenido',[				  //  Empresa
				'uses'=>'adm\ContenidoSController@update_contenido',
				'as'=>'contenidosolucion.update_contenido'
    ]);

    Route::get('aislaciones',['uses'=>'adm\AislacionesController@index','as'=>'aislaciones.index']);
    Route::resource('aislacion','adm\AislacionesController');
	Route::resource('contenidoaislacion','adm\ContenidoAController'); 
	Route::post('contenidoaislacion/update-contenido',[	
				'uses'=>'adm\ContenidoAController@update_contenido',
				'as'=>'contenidoaislacion.update_contenido'
    ]);
    Route::get('aislacion/borrar/{id}',[ 'uses'=>'adm\AislacionesController@destroy', 'as'=>'aislacion.destroy']);

	Route::resource('galeria_trabajo','adm\GaleriaTController');
    Route::get('galeria_trabajo/{id}/destroy',[
				'uses'=>'adm\GaleriaTController@destroy',
				'as'=>'galeria_trabajo.destroy'
		]);
    Route::get('galeria_trabajo/{id}/index',[
				'uses'=>'adm\GaleriaTController@index',
				'as'=>'galeria_trabajo.index'
		]);
    Route::get('galeria_trabajo/{id}/create',[
				'uses'=>'adm\GaleriaTController@create',
				'as'=>'galeria_trabajo.create'
		]);
	


	Route::resource('minorista','adm\MinoristasController'); //CONTROLADOR tabla Contenido 
	Route::post('minorista/update-contenido',[				  //  Empresa
				'uses'=>'adm\MinoristasController@update_contenido',
				'as'=>'minorista.update_contenido'
    ]);

	
});


Auth::routes();

