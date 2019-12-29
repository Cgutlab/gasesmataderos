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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700" rel="stylesheet"><link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet">

</head>
<body>

@include('pages.template.header')


<div class="contenedor margen-top-ind">
    <div class="row">
        <div class="col s12 migas">
            {{$familia->nombre}} |
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
                                <li>
                                    {{$sub->nombre}}
                                </li>
                            </a>
                        @endforeach
                    </ul>
                    @endif

                @endforeach
            </ul>
        </div>
        <div class="col m12 l9">
        	<div class="row">
        		@foreach($subfamilias as $subf)
		          <div class="col m12 l4" style="margin-bottom: 40px;">
		           <a href="{{route('productos',$subf->id)}}">
		              <div class="img-dest" style="height: 225px;">
		                <div class="capa"><img src="{{asset('imagenes/iconplus.png')}}"></div>
		                @if($subf->imagen)
                        <img class="responsive-img" src="{{asset($subf->imagen)}}">
                        @else
                        <img class="responsive-img" src="{{asset('imagenes/nop-image.jpg')}}">
                        @endif
		              </div>
		              <div class="nom-dest rajdhani" style="font-size: 25px;">
		                  {{$subf->nombre }}
		              </div>
		            </a>
		          </div>
		        @endforeach
        	</div>
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