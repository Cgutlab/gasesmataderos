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
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/productos.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/style.css') }}">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
</head>
<body>

@include('pages.template.header')
<div class="container margen-top">
  <div class="row">
    <div class="col-xs-12 titledestacados rajdhani" style="font-size: 24px; text-align: left;margin-bottom: 15px; font-weight: 600; color: #E01613;">
        BUSCADOR
    </div>

  </div>  

  <div class="row">
    <div class="col-xs-12 campobusca">
      <div class="formulario">
        {!!Form::open([ 'route' => 'buscador', 'method' => 'POST']) !!}
          <div class="form-group">
          {!! Form::text('busca', null, ['class' => 'form-control', 'placeholder' => 'Buscar', 'required'])!!}
          </div>
          <div class="form-group ">
            <div class="campobusca">
              <input class="btn btn-home" type="submit" value='Buscar'/>
            </div>
          </div>

        {!!Form::close() !!}

      </div>
    </div>
  </div>

  <div class="row" style="margin-top: 9%;">
    @if($busca==1)
       @foreach($productos as $producto)
          <div class="col s12 m4" style="margin-bottom: 40px;">
            <a href="{{route('productoind',$producto->id)}}">
              <div class="img-dest" style="height: 225px;">
                <div class="capa"><img src="{{asset('imagenes/iconplus.png')}}"></div>
                <img class="responsive-img" src="{{asset($producto->imagen)}}">
              </div>
              <div class="nom-dest rajdhani" style="font-size: 25px;">
                  {{$producto->nombre }}
              </div>
            </a>
          </div>
        @endforeach
        @foreach($familias as $fam)
          <div class="col s12 m4" style="margin-bottom: 40px;">
            <a href="{{route('subfamilias',$fam->id)}}">
              <div class="img-dest" style="height: 225px;">
                <div class="capa"><img src="{{asset('imagenes/iconplus.png')}}"></div>
                <img class="responsive-img" src="{{asset($fam->imagen)}}">
              </div>
              <div class="nom-dest rajdhani" style="font-size: 25px;">
                  {{$fam->nombre }}
              </div>
            </a>
          </div>
        @endforeach

        @foreach($subfamilias as $sub)
          <div class="col s12 m4" style="margin-bottom: 40px;">
            <a href="{{route('productos',$sub->id)}}">
              <div class="img-dest" style="height: 225px;">
                <div class="capa"><img src="{{asset('imagenes/iconplus.png')}}"></div>
                <img class="responsive-img" src="{{asset($sub->imagen)}}">
              </div>
              <div class="nom-dest rajdhani" style="font-size: 25px;">
                  {{$sub->nombre }}
              </div>
            </a>
          </div>
        @endforeach
    @endif
  </div>
</div>

@include('pages.template.footer')

<script src="{{ asset('js/materialize.min.js')}}"></script>
<script>
$(document).ready(function(){
  $('.sidenav').sidenav();
});
</script>
</body>
</html>