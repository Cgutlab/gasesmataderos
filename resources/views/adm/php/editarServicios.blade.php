@extends('adm.cuerpo')
@section('titulo','Servicios')
@section('contenido')

<div class="row">
    <div class="col-xs-12 col-md-8 col-md-offset-2">
        <div class="panel panel-default table-responsive">
            <div class="panel-heading">
                <h3 class="panel-title">Editar 
                <a href="{{route('servicio.create')}}" class="btnnuevo">Nuevo <i class="glyphicon glyphicon-plus"></i></a></h3>
            </div>
            @include('flash::message')
			<table class="table table-striped table-bordered ">

				<thead>
					<td>Texto</td>
					<td width="25%">Imagen</td>
					<td>Acciones</td>
				</thead>
				<tbody>
					@foreach($servicios as $servicio)
						<tr>
							<td>{!!$servicio->texto!!}</td>
							<td><img class="img-responsive" src="{{ asset($servicio->imagen) }}"></td>
							<td>
							<a href="{{ route('servicio.edit',$servicio->id) }}" class="btn btn-xs btn-warning">Editar</a>
							<a href="{{ route('servicio.destroy',$servicio->id) }}" class="btn btn-xs btn-danger">Eliminar</a>
			                </td>
						</tr>
					@endforeach
				</tbody>
			</table>			
		</div>
    </div>
</div>
@endsection