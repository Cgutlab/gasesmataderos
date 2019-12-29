

<footer class="page-footer " >
    <div class="contenedor" style="padding-bottom: 20px;">

        <div class="row margenes-lateral" style="margin-bottom: 0px;">

            <div class="col s6 m6 l4" >
                <div  class="row">
                    <div class="col l12"><h5 class="rajdhani">MAPA DE SITIO</h5></div>
                    <div class="col s12 l6">
                        <a href="{{route('index')}}" class="texto-footer">Home</a><br>
                        <a href="{{route('empresa')}}" class="texto-footer">Empresa</a><br>
                        <a href="{{route('familias')}}" class="texto-footer">Productos</a><br>
                        <a href="{{route('servicios')}}" class="texto-footer">Servicios</a><br>
                        <a href="{{route('descargas')}}" class="texto-footer">Garantía</a><br>
                    </div>
                    <div class="col s12 l6">
                        <a href="{{route('postventas')}}" class="texto-footer">Post-venta</a><br>
                        <a href="{{route('presupuesto')}}" class="texto-footer">Solicitud de presupuesto</a><br>
                        <a href="{{route('contacto')}}" class="texto-footer">Contacto</a><br> 
                    </div>
                </div>
            </div>

             <div class="col s12 m12 l4" style="display: flex;
    justify-content: center;
    align-items: center;">
                <a href="{{route('index')}}" class="">
                    <img class="img-responsive" src="{{ asset($logofoot->ruta) }}">
                </a>
            </div>

            <div class="col s12 m12 l4 texto-footer"  >
                <h5 style="margin-left: 17%;" class="rajdhani">GASES MATADEROS</h5>
                <div class="row" style="margin-bottom: 6px;" >

                    <div class="col s2 " style="padding-top: 5px;">
                        <i class="material-icons">location_on</i>
                    </div>
                    <div class="col s10 ">
                        <a href="https://goo.gl/maps/ZanCfGYYpht" class="texto-mail">{!! $direccion->descripcion !!}</a>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 6px;">
                    <div class="col s2 ">
                        <i class="material-icons">phone_in_t</i>
                    </div>
                    <div class="col s10">
                      <a class="texto-mail" href="tel:{{ $tlf->descripcion }}">{!! $tlf->descripcion !!}</a>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 6px;">
                    <div class="col s2 ">
                        <i class="material-icons">mail_outline</i>
                    </div>
                    <div class="col s10 ">
                      <a class="texto-mail" href="mailto:{{ $email->descripcion }}">{{ $email->descripcion }}</a>                  
                      </div>

                </div>
            </div>

        </div>
        <div class="row" style="color:#878787; ">
            <div style="width: 100%; border-bottom: 1px solid #878787;"></div>
            <div style="font-size: 12px; float: right;">BY OSOLE</div>
            <div style="font-size: 12px; float: left;">© 2019</div>
        </div>
    </div>
</footer>