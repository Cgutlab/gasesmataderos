<div class="contenedor back-white hide-on-small-only hide-on-med-only">
  <div>
    <a href="{{route('index')}}" class=" ">
        <img class="img-responsive" src="{{ asset($logohead->ruta) }}">
    </a>
  </div>

  <div class="datosheader" style="margin-left: 8%">
    <div class="row" style="margin-bottom: 6px;">
        <div class="col s2 ">
            <i class="material-icons">phone_in_talk</i>
        </div>
        <div class="col s10 ">
         {!! $tlf->descripcion !!}              
        </div>
    </div>
    <div class="row" style="margin-bottom: 0px;">
        <div class="col s2 ">
            <i class="material-icons">location_on</i>
        </div>
        <div class="col s10 ">
          {{ $direccion->descripcion }}         
        </div>
    </div>
  </div>

  <div class="datosheader" style="margin-right: 2%">
    <div class="row" style="margin-bottom: 0px;">
        <div class="col s2 ">
           <img src="{{asset('imagenes/wpicon.png')}}" style="width: 100%">
        </div>
        <div class="col s10 ">
          <a class="" href="">{{ $wp->descripcion }}}</a>              
        </div>
    </div>
    <div class="row" style="margin-bottom: 0px;">
        <div class="col s2 ">
            <i class="material-icons">mail_outline</i>
        </div>
        <div class="col s10 ">
          <a class="" href="mailto:>{{ $email->descripcion }}">{{ $email->descripcion }}</a>              
        </div>
    </div>
    <div class="row" style="margin-bottom: 0px;">
        <div class="col s2 ">
            <i class="material-icons">history</i>
        </div>
        <div class="col s10 ">
          {{ $horario->descripcion }}             
        </div>
    </div>
  </div>
    
  <div style="padding-top: 10px">
      <img class="img-responsive" src="{{ asset($logootro->ruta) }}">
  </div>

</div>
<div class="margen-menu-centro">
  <ul class="menu-centro hide-on-med-and-down">

        <li class="@if($active=='empresa') activoli @endif">
          <a href="{{route('empresa')}}" class="@if($active=='empresa') activo @endif">EMPRESA</a>
        </li>
        
        <li class="@if($active=='productos') activoli @endif">
            <a href="{{route('familias')}}" class="@if($active=='productos') activo @endif">PRODUCTOS</a>
        </li>

        <li  class="@if($active=='servicios') activoli @endif">
          <a href="{{route('servicios')}}" class="@if($active=='servicios') activo @endif">SERVICIOS</a>
        </li>

        <li class="@if($active=='descargas') activoli @endif">
          <a href="{{route('descargas')}}" class="@if($active=='descargas') activo @endif">GARANTÍA</a>
        </li>

        <li class="@if($active=='postventas') activoli @endif " >
          <a href="{{route('postventas')}}" class="@if($active=='postventas') activo @endif " >POST-VENTA </a>
        </li>
        
        <li class="@if($active=='presupuesto') activoli @endif">
          <a href="{{route('presupuesto')}}" class="@if($active=='presupuesto') activo @endif">SOLICITUD DE PRESUPUESTO</a>
        </li>

        <li class="@if($active=='contacto') activoli @endif">
          <a href="{{route('contacto')}}" class="@if($active=='contacto') activo @endif">CONTACTO</a>
        </li>

        <li class="@if($active=='buscar') activoli @endif">
          <a href="{{route('busca')}}" class="@if($active=='buscar') activo @endif">
            <div class="search-content " align="center">
              <i class="material-icons" style="color: white;" >search</i>
            </div></a>
        </li>

        

  </ul>
</div>


<nav class="z-depth-0  hide-on-large-only">
    <div class="nav-wrapper navbar ">
      <a href="{{route('index')}}" class="brand-logo center"><img class="responsive-img logo" src="{{ asset($logohead->ruta) }}"  /></a>
      <a href="#" data-target="mobile-demo" class="sidenav-trigger" style="margin-top: 42px;"><i class="material-icons">menu</i></a>
    </div>
</nav> 
  <ul class="sidenav" id="mobile-demo">
    <li>
      <a href="{{route('index')}}">HOME</a>
    </li>

    <li>
      <a href="{{route('empresa')}}">EMPRESA</a>
    </li>
    
    <li>
        <a href="{{route('familias')}}">PRODUCTOS</a>
    </li>

    <li>
      <a href="{{route('servicios')}}">SERVICIOS</a>
    </li>

    <li>
      <a href="{{route('descargas')}}">GARANTIA</a>
    </li>

    <li>
      <a href="{{route('postventas')}}">POST-VENTA</a>
    </li>
    
    <li>
      <a href="{{route('presupuesto')}}" >SOLICITUD DE PRESUPUESTO</a>
    </li>


    <li>
      <a href="{{route('contacto')}}" >CONTACTO</a>
    </li>

    <li>
        <a href="{{route('busca')}}">
          <i class="material-icons" >search</i>
        </a>
    </li>

  </ul>

