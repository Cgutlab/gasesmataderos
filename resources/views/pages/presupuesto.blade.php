<!DOCTYPE html>

<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Gases mataderos</title>  
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

<div class="container" style="margin-bottom: 100px;">
    <form action="{{route('enviarpresupuesto')}}" method="post" enctype="multipart/form-data" >
    {{ csrf_field() }}
    <div class="row" style="margin-top: 100px;">
        <div id="estado1" class="col s12">
            <div class=row  style="padding-left: 6%;">
                <div class="col l3 push-l1">
                   <img style="align-items: center;" src="{{asset('imagenes/presupuesto/estado1.png')}}">
                   <h1 class="fs20 mayus rajdhani" style="    font-size: 25px;
    color: #E01613;
    font-weight: 600;">TUS DATOS</h1>
                   <div style="height: 4px; width: 70%; margin: 0 auto;"></div>
                </div> 
                <div class="col l5" style="margin-top: 40px;" id="elDiv1">
                    <img src="{{ asset('imagenes/presupuesto/linea.png')}}" >
                </div>
                <div class="col l3" id="elDiv2">
                   <img src="{{asset('imagenes/presupuesto/estado2.png')}}">
                   <h1 class="fs20 mayus rajdhani" style="    font-size: 25px;
    color: #E01613;
    font-weight: 600;">TU PROYECTO</h1>
                   <div style="height: 4px; width: 70%; margin: 0 auto;"></div>
                </div>
            </div>
            <div class="row">
                <div class="col l5 push-l1">
                    <input name="nombre" id="nombre" type="text" placeholder="Nombre">
                </div>
                <div class="col l5 push-l1">
                    <input name="nombre" id="nombre" type="text" placeholder="Localidad">
                </div>
                <div class="col l5 push-l1">
                    <input name="email" id="email" type="text" placeholder="Email">
                </div>
                <div class="col l5 push-l1">
                    <input name="telefono" id="telefono" type="text" placeholder="Teléfono">
                </div>
                <div class="col l3 pull-l1 right">
                    <button type="button" id="botonSiguienteEstado" class="btn right z-depth-0 rajdhani" style="margin-top: 20px; background-color:#27629D; color:white; font-weight: 500;
    font-size: 18px; text-transform: uppercase;">Siguiente</button>
                </div>
            </div>
            
        </div>
    </div>
    <div class="row">
        <div id="estado2" class="col s12" style="display: none; transition: 0.5s;">
            <div class="row" style="padding-left: 6%;">
                <div class="col l3 push-l1">
                   <img style="align-items: center;" src="{{asset('imagenes/presupuesto/estado3.png')}}">
                   <h1 class="fs20 mayus rajdhani" style=" font-size: 25px;
    color: #E01613;
    font-weight: 600;">TUS DATOS</h1>
                   <div style="height: 4px; width: 70%; margin: 0 auto;"></div>
                </div> 
                <div class="col l5" style="margin-top: 40px;" id="elDiv1">
                    <img src="{{ asset('imagenes/presupuesto/linea.png')}}" >
                </div>
                <div class="col l3" id="elDiv2">
                   <img src="{{asset('imagenes/presupuesto/estado4.png')}}">
                   <h1 class="fs20 mayus rajdhani" style="    font-size: 25px;
    color: #E01613;
    font-weight: 600;">TU PROYECTO</h1>
                   <div style="height: 4px; width: 70%; margin: 0 auto;"></div>
                </div>
            </div>
            <div class="row">
                <div class="col l5 push-l1">
                    <textarea id="detalles" name="detalles" class="materialize-textarea" placeholder="Mensaje" style="height: 88px;"></textarea>
                </div>
                <div class="file-field input-field col s12 l5 push-l1" style="margin-top: 30px;">
                        <div class="btn z-depth-0 rajdhani" style=" background-color:#27629D; color:white; font-weight: 400; text-transform: uppercase;font-weight: 400;">
                            <span>Examinar</span>
                            {!! Form::file('archivo') !!}
                        </div>
                        <div class="file-path-wrapper">
                            {!! Form::text('archivo',null, ['class'=>'file-path validate']) !!}
                        </div>
                    </div>
                <div class="col s2"></div>
                <div class="col s6 push-l1">
                    <div class="input-field ">
                        <div class="g-recaptcha margin-for-responsive" data-sitekey="6Le4WT4UAAAAAMsSrRvyvdMGIEyHIXLmuf9EFYPl"></div>
                    </div>
                </div>
                <div class="col s6">
                    <p >
                        <label>
                        <input type="checkbox"  class="filled-in" name="acept" required=""><span class="acept-term">
                         Acepto los términos y condiciones de privacidad
                        </span>
                        </label>
                    </p>
                </div>
                <div class="col s12 m6"></div>
                <div class="col l5 push-l1">
                    <button type="button" id="botonEstadoAnterior" class="btn center z-depth-0 rajdhani" style="margin-top: 20px; background-color:white; color:#E01613; border:1px solid #E01613; text-transform: uppercase; font-weight: 500;
    font-size: 18px;">Anterior</button>
                    <button type="submit" id="botonSiguienteAnterior" class="btn right z-depth-0 rajdhani" style="margin-top: 20px; background-color:#E01613; color:white;  text-transform: uppercase;font-weight: 500;
    font-size: 18px;">Enviar</button>
                </div>
            </div>
            
        </div>
    </div>
    </form>


</div>
@include('pages.template.footer')

 <script>
    
            document.getElementById("botonSiguienteEstado").addEventListener("click", mostrarEstado2);
            document.getElementById("botonEstadoAnterior").addEventListener("click", mostrarEstado1);

            function mostrarEstado2() {
                document.getElementById("estado1").className = "animated bounceOutLeft";
                setTimeout(function(){ 
                    document.getElementById("estado1").style.display = "none"; 
                    document.getElementById("estado2").style.display = "block";
                    document.getElementById("estado2").className = "animated bounceInRight";
                    
                    document.getElementById("elDiv1").className = "paso datos col m2 col l2 offset-m1";
                    document.getElementById("elDiv2").className = "paso obra active col m4 col l4 push-l3";
                }, 1000);

            }
            
            function mostrarEstado1() {
                document.getElementById("estado2").className = "animated bounceOutLeft";
                
                setTimeout(function(){ 
                    document.getElementById("estado2").style.display = "none"; 
                    document.getElementById("estado1").style.display = "block";
                    document.getElementById("estado1").className = "animated bounceInRight";
                    
                    document.getElementById("elDiv1").className = "paso datos active col m2 col l2 offset-m1";
                    document.getElementById("elDiv2").className = "paso obra col l2 col m4 col l4 push-l3";
                }, 1000);
            }
            
            function animacion(id, clase) {
                $(id).removeClass("animated "+clase).addClass(clase + ' animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
                  $(this).removeClass("animated "+clase);
                });
            };

        </script>
<script type="text/javascript">
    $('.dropdown-button').dropdown({
        hover: true,
        coverTrigger: false,
        autoTrigger: false
      });
</script>

<script src='https://www.google.com/recaptcha/api.js?hl=es'></script>  

<script src="{{ asset('js/materialize.min.js')}}"></script>
<script>
$(document).ready(function(){
  $('.sidenav').sidenav();
});
</script>
</body>



</html>