<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Mosaicos Rossi</title>  
    <link rel="icon" type="image/png" href="{{ asset('imagenes/logos/favicon.png') }}"/>
    <meta name="keywords" content="{{ $metadato->keywords }}">
    <meta name="description" content="{{ $metadato->description }}">
    <script type="text/javascript" src="{{ asset('js/jquery-2.2.0.min.js') }}"></script> 
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/materialize.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/materialize.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/pages/trabajos.css') }}">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700,800" rel="stylesheet">

</head>
<body>

@include('pages.template.header')

<div class="contenedor margen-top margenfoot">
  <div class="row ">
    <div class="col s12  title center-align">
      <span>Galería de Trabajos Realizados</span>
      <div class="under-line"></div>
      
    </div>
  </div>
  <div class="row " >
    @foreach($trabajos as $trabajo)
      <div class="col s12 m6">
	      <a href="#modal{{$trabajo->id}}" class="modal-trigger">
	        <div class="box">
	          <img src="{{asset($trabajo->imagen)}}" class="responsive-img">
	        </div>
	        <div class="nombretrab">
	          {{$trabajo->nombre}}
	        </div>
	      </a>
      </div>

      <div id="modal{{$trabajo->id}}" class="modal">
	    <div class="modal-content">
	      	<div class="titulo-modal">
	      		{{$trabajo->nombre}}
	      		<div>{{$trabajo->subtitulo}}</div>
	      	</div>
			@php $i=0; @endphp
	      	@foreach($galerias as $galeria)
                @if($i==0 && $galeria->id_trabajo==$trabajo->id)
                    <div class="center height hide-on-small-only" style="">
                        <img class="responsive-img" id="producto" src="{{asset($galeria->imagen)}}" width="100%">
                    </div>
                    @php $i++; @endphp
                @endif
            @endforeach
            <div class="row" style="margin-top: 10px;">
                @foreach($galerias as $galeria)
                @if($galeria->id_trabajo==$trabajo->id)
                    <div class="col s12 m4">
                        <div class="center height-mini" style=" cursor: pointer;">
                            <img class="responsive-img" src="{{asset($galeria->imagen)}}" alt="" onclick="actualizar('{{asset($galeria->imagen)}}')">
                        </div>
                    </div>
                 @endif
                @endforeach
            </div>

            <div class="texto-trabajo">
            	{!!$trabajo->texto!!}
            </div>
            <div class="materiales">
            	<span>Materiales Utilizados</span>
            	<div class="row" style="margin-top: 3%;">
            		@foreach($materiales as $material)
            			@foreach($relacion as $item)
            			@if($material->id == $item->id_material && $item->id_trabajo==$trabajo->id)
            			<div class="col s4 material">
            				<img src="{{$material->imagen}}" style="border:1px solid #ddd;">
            				{{$material->nombre}}
            			</div>
            			@endif
            			@endforeach
            		@endforeach
            	</div>
            </div>
	    </div>
	  </div>
    @endforeach
    
  </div>

</div>  

@include('pages.template.footer')
<script src="{{ asset('js/materialize.js')}}"></script> 
<script src="{{ asset('js/materialize.min.js')}}"></script> 
<script type="text/javascript">
	
  $(document).ready(function(){
    $('.modal').modal();
  });
</script>
<script>
    function actualizar(imagen){
      document.getElementById('producto').src = imagen;
    }
</script>


</body>
</html>