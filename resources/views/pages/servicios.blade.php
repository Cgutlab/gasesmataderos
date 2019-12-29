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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

</head>
<body>

@include('pages.template.header')


<div class="contenedor margen-top margenfoot">
  <div class="row center-align">
    <div class="titulohead rajdhani">Servicios</div>
  </div>

  @foreach($servicios as $key=> $servicio)
  	@if($key%2==0)
  	<div class="row">
  		<div class="col s6 " style="padding-top: 10px;">
  			<img class="responsive-img" src="{{asset($servicio->imagen)}}" >
  		</div>
  		<div class="col s6 textoservi">
  			{!!$servicio->texto!!}
  		</div>
  		@if($key+1!= count($servicios))
  		<div class="col s12">
  			<div style="border-bottom: 1px solid #E7E7E7; width: 100%;    margin-top: 4%;  margin-bottom: 4%;"></div>
  		</div>
  		@endif
  	</div>
  	@else
  	<div class="row">
  		<div class="col s6 textoservi">
  			{!!$servicio->texto!!}
  		</div>
  		<div class="col s6 " style="padding-top: 10px;">
  			<img class="responsive-img" src="{{asset($servicio->imagen)}}" >
  		</div>
  		@if($key+1!= count($servicios))
  		<div class="col s12">
  			<div style="border-bottom: 1px solid #E7E7E7; width: 100%;  margin-top: 4%;   margin-bottom: 4%;"></div>
  		</div>
  		@endif
  	</div>
  	@endif
  @endforeach
</div>



@include('pages.template.footer')
<script src="{{ asset('js/materialize.js')}}"></script> 
<script src="{{ asset('js/materialize.min.js')}}"></script> 

<script>
$(document).ready(function(){
  $('.sidenav').sidenav();
});
</script>
</body>
</html>