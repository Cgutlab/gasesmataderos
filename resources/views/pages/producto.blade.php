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
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/productos.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('slick/slick.css') }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('slick/slick-theme.css') }}"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">
</head>

<body>

@include('pages.template.header')

<div class="contenedor margen-top-ind">

  <div class="row">
        <div class="col s12 migas">
          <a href="{{route('subfamilias',$familia->id)}}">  {{$familia->nombre}} </a> | <a href="{{route('productos',$subfamilia->id)}}">{{$subfamilia->nombre}}</a> | {{$producto->nombre}}
        </div>
    </div>

  <div class="row">
        <div class="col m12 l3 ">
            <ul class="menuleft rajdhani">
                @foreach($familias as $fam)
                    <a href="{{route('subfamilias',$fam->id)}}">
                        <li class="@if($fam->id==$familia->id) activofam @endif">
                            {{$fam->nombre}} <i class="material-icons">arrow_drop_down</i>
                        </li>
                    </a>
                    @if($fam->id==$familia->id) 
                    <ul class="submenu">
                        @foreach($subfamilias as $sub)
                            <a href="{{route('productos',$sub->id)}}">
                                <li class="@if($sub->id == $subfamilia->id) activofam @endif">
                                    {{$sub->nombre}}
                                </li>
                            </a>
                            @if($sub->id == $subfamilia->id)
                                <ul class="submenu">
                                    @foreach($productos as $prod)
                                        <a href="{{route('productoind',$prod->id)}}">
                                            <li>
                                                {{$prod->nombre}}
                                            </li>
                                        </a>
                                    @endforeach
                                </ul>
                            @endif
                        @endforeach
                    </ul>
                    @endif

                @endforeach
            </ul>
        </div>
        <div class="col m12 l9">
            <div class="row">
              <div class="col m12 l5">
                <div class="one-time">
                  <div style="display: flex;justify-content: center;align-items: center; border: 1px solid #DBDBEA;"><img class="responsive-img" src="{{asset($producto->imagen)}}"></div>
                    @foreach($galerias as $slider)
                      <div style="display: flex;justify-content: center;align-items: center; border: 1px solid #DBDBEA;">
                        <img class="responsive-img" src="{{asset($slider->imagen)}}">
                      </div>
                    @endforeach
                </div>
              </div>
              <div class="col m12 l7">
                  <span class="titulopro rajdhani">{{$producto->nombre}}</span>
                  <div class="textotab">
                      {!!$producto->texto!!}
                  </div>
                  @if($producto->pdf)
                     <a href="{{$producto->pdf}}" target="_blank" class="btn btn-home z-depth-0 ">DESCARGAR PDF</a>
                  @endif
              </div>
            </div>
            <div class="row">
              <div class="col s12 texto2pro">
                {!!$producto->texto2!!}
              </div>
            </div>

            <div class="row">
              @if($producto->relacion1 || $producto->relacion2 || $producto->relacion3)
                <div class="col s12 titlered rajdhani">Productos Relacionados</div>
                @if($producto->relacion1)
                  <div class="col l4" >
                     <a href="{{route('productoind',$producto->relacion1->id)}}">
                        <div class="img-dest" style="height: 225px;">
                          <div class="capa"><img src="{{asset('imagenes/iconplus.png')}}"></div>
                          <img class="responsive-img" src="{{asset($producto->relacion1->imagen)}}">
                        </div>
                        <div class="nom-dest rajdhani" style="font-size: 25px;">
                            {{$producto->relacion1->nombre }}
                        </div>
                      </a>
                    </div>
                @endif

                @if($producto->relacion2)
                  <div class="col l4">
                     <a href="{{route('productoind',$producto->relacion2->id)}}">
                        <div class="img-dest" style="height: 225px;">
                          <div class="capa"><img src="{{asset('imagenes/iconplus.png')}}"></div>
                          <img class="responsive-img" src="{{asset($producto->relacion2->imagen)}}">
                        </div>
                        <div class="nom-dest rajdhani" style="font-size: 25px;">
                            {{$producto->relacion2->nombre }}
                        </div>
                      </a>
                    </div>
                @endif

                @if($producto->relacion3)
                  <div class="col l4" >
                     <a href="{{route('productoind',$producto->relacion3->id)}}">
                        <div class="img-dest" style="height: 225px;">
                          <div class="capa"><img src="{{asset('imagenes/iconplus.png')}}"></div>
                          <img class="responsive-img" src="{{asset($producto->relacion3->imagen)}}">
                        </div>
                        <div class="nom-dest rajdhani" style="font-size: 25px;">
                            {{$producto->relacion3->nombre }}
                        </div>
                      </a>
                    </div>
                @endif

              @endif
              
            </div>

        </div>
</div>
  </div>


@include('pages.template.footer')

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="{{asset('slick/slick.min.js') }}"></script>

<script src="{{ asset('js/materialize.js')}}"></script> 
<script src="{{ asset('js/materialize.min.js')}}"></script> 
<script type="text/javascript">

$(document).ready(function(){
  $('.one-time').slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    adaptiveHeight: true
  });
});
</script>


<script>
$(document).ready(function(){
  $('.sidenav').sidenav();
});
</script>
</body>
</html>