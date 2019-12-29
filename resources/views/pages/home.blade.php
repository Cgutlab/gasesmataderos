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
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/inicio.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/style.css') }}">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
</head>
<body>
@include('pages.template.header')

<div class="carousel carousel-slider" >
  @foreach($sliders as $slider)
    <a class="carousel-item" href="#one!"><img class="responsive-img" src="{{asset($slider->imagen)}}">
      <div class="caja-slider rajdhani">
        {!! $slider->{"texto"} !!}
      </div>
    </a>
  @endforeach
</div>

<div class="contenedor margen-top">
  <div class="row ">
    @foreach($destacados as $destacado)
      <div class="col m6 l3">
        <a href="{{$destacado->link}}">
          <div class="img-dest">
            <img class="responsive-img" src="{{asset($destacado->imagen)}}">
          </div>
          <div class="nom-dest rajdhani">
              {{$destacado->nombre }}
          </div>
        </a>
      </div>
    @endforeach
  </div>
  
</div>

<div class="fondorojo">
  <div class="contenedor">
    <div>
      {!! $contenido->{"texto"} !!}
    </div>
  </div>
</div>


<div class="fondogris">
  <div class="contenedor">
    <div class="row margenhistoria">
      <div class="col s12  center-align">
        <img src="{{asset($contenido->imagen)}}" class="responsive-img">
      </div>
      <div class="col s12  center-align">
        <div class=" titulotext rajdhani">
            {{ $contenido->{"titulo"} }}
        </div>
      </div>
      <div class="col s12 center-align">
          <a href="{{ $contenido->{"link"} }}" class="btn btn-home z-depth-0 rajdhani ">VER CATÁLOGO</a>
      </div>
    </div>
  </div>
</div>


@include('pages.template.footer')

<script src="{{ asset('js/materialize.js')}}"></script> 
<script src="{{ asset('js/materialize.min.js')}}"></script> 

<script type="text/javascript">
      $(document).ready(function(){
        $('.sidenav').sidenav();

      });

      $('.carousel.carousel-slider').carousel({
        fullWidth: true,
        indicators: true
      });

</script>
</body>
</html>