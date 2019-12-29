<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Gases Mataderos</title>  
    <link rel="icon" type="image/png" href="{{ asset('imagenes/logos/favicon.png') }}"/>
    <meta name="keywords" content="{{ $metadato->keywords }}">
    <meta name="description" content="{{ $metadato->description }}">
    <script type="text/javascript" src="{{ asset('js/jquery-2.2.0.min.js') }}"></script> 
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/materialize.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/materialize.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/contacto.css') }}">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

</head>
<body>

@include('pages.template.header')


<div class="contenedor margen-top margenfoot">
  <div class="row center-align">
    <div class="titulohead rajdhani">Post-venta</div>
  </div>
  <div class="row">
  	<div class="col s12 m6">
  		@foreach($postventas as $post)
  			<div class="row" style="margin-bottom: 4%;">
  				<div class="col s3 center-align">
  					<img src="{{asset($post->imagen)}}" class="responsive-img">
  				</div>
  				<div class="col s9 textopost">
  					{!! $post->texto !!}
  				</div>
  			</div>
  		@endforeach
  	</div>
  	<div class="col s12 m6">
  		@include('flash::message')

	    @if(count($errors) > 0)
	        <div class="alert alert-danger" role="alert">
	            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	            @foreach($errors->all() as $error)
	                <p>{{$error}}</p>
	            @endforeach
	        </div>
	    @endif  
  		<div class="formgris row">
  			<div class="textoform col s12">
  				<h1>¿Necesitás Asesoramiento?</h1>
  				<p>Completá el siguiente formulario y nos contactaremos a la brevedad</p>
  			</div>

   			{!!Form::open(['route' => 'contacto.consulta', 'method'=>'post']) !!}

   			<div class="col s12"  >
			    <div class="input-field">
			        <input type="text" class="validate" name='nombre' id='nombre' minlength="3" maxlength="30" required="">
			        <label for="nombre">
			        Nombre
			        </label>
			    </div>
        	</div>
        	<div class="col s12">
        		<div class="input-field">
		            <input type="email" class="validate" name='email' id='email'  required="">
		            <label for="email">Email</label>
		        </div>
        	</div>
	        <div class="col s12">
		        <div class="input-field">
		            <input type="text" class="validate" name='empresa' id='empresa' >
		            <label for="empresa">Empresa</label>
		        </div>
	        </div>

	        <div class="col s12 ">
	            <div class="input-field">
	                <textarea class="materialize-textarea" name="mensaje" id="mensaje"></textarea>
	                <label for="mensaje">
	                    Mensaje
	                </label>
	            </div>
	        </div>

   			<div class="col s7">
                <div class="input-field ">
                    <div class="g-recaptcha margin-for-responsive" data-sitekey="6Le4WT4UAAAAAMsSrRvyvdMGIEyHIXLmuf9EFYPl"></div>
                </div>
            </div>
            <div class="col s5">
                <p >
                    <label>
                    <input type="checkbox"  class="filled-in" name="acept" required=""><span class="acept-term">
                     Acepto los términos y condiciones de privacidad
                    </span>
                    </label>
                </p>
            </div>
  			<div class=" col s12 center-align">
            	<button type="submit" class="btn btn-home z-depth-0">Enviar</button>
        	</div>

    		{!!Form::close() !!}

  		</div>
  		
  	</div>
  </div>

</div>



@include('pages.template.footer')
<script src="{{ asset('js/materialize.js')}}"></script> 
<script src="{{ asset('js/materialize.min.js')}}"></script> 

<script src='https://www.google.com/recaptcha/api.js?hl=es'></script> 


<script>
$(document).ready(function(){
  $('.sidenav').sidenav();
});
</script>
</body>
</html>