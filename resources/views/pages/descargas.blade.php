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
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/descargas.css') }}">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

</head>
<body>

@include('pages.template.header')


<div class="contenedor margen-top margenfoot">
  <div class="row center-align">
    <div class="titulohead rajdhani">Garantía</div>
  </div>

  <div class="row " >
    <div class="col s12 m8">
      {!! $contenido->texto !!}
    </div>

    <div class="col s12 m4">
      @foreach($descargas as $descarga)
      <div class="margenDescargas">
        <div>
        <a href="{{asset($descarga->ficha)}}" target="_blank">
          <div class="contenticon center-align">
            <i class="material-icons">archive</i>
          </div>
          <div class="contentnombre">
            <h1>DESCARGAR</h1>
            {!!$descarga->nombre!!}
          </div>
        </a>
        </div>
        
      </div>
      @endforeach
    </div>
  </div>
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