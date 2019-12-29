@extends('adm.cuerpo')
@section('titulo','Descargas')
@section('contenido')

<div class="row">
    <div class="col-xs-12 col-md-8 col-md-offset-2">
        <div class="panel panel-default table-responsive">
            <div class="panel-heading">
                <h3 class="panel-title">Editar Descargas
                <a href="{{route('descarga.create')}}" class="btnnuevo">Nuevo <i class="glyphicon glyphicon-plus"></i></a></h3>
            </div>
            @include('flash::message')
			<table class="table table-striped table-bordered ">

				<thead>
					<td>Orden</td>
					<td>Nombre</td>
					
					<td>Acciones</td>
				</thead>
				<tbody>
					@foreach($descargas as $descarga)
						<tr>
							<td>{{$descarga->orden}}</td>
							<td>{!!$descarga->nombre!!}</td>
							<td>
							<a href="{{ route('descarga.edit',$descarga->id) }}" class="btn btn-xs btn-warning">Editar</a>
							
							{{ Form::open(array('route' => array('descarga.destroy', $descarga->id))) }}
			                    {{ Form::hidden('_method', 'DELETE') }}
			                    {{ Form::submit('Eliminar', array('class' => 'btn btn-xs btn-danger')) }}
			                {{ Form::close() }}
			                </td>
						</tr>
					@endforeach
				</tbody>
			</table>			
		</div>
    </div>
</div>
@endsection