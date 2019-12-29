@extends('adm.cuerpo')
@section('titulo','Sub Familias')
@section('contenido')

<div class="row">
    <div class="col-xs-12 col-md-8 col-md-offset-2">
        <div class="panel panel-default table-responsive">
            <div class="panel-heading">
                <h3 class="panel-title">Editar 
                <a href="{{route('subfamilia.create')}}" class="btnnuevo">Nuevo <i class="glyphicon glyphicon-plus"></i></a></h3>
            </div>
            @include('flash::message')
			<table class="table table-striped table-bordered ">

				<thead>
					<td>Familia</td>
					<td>Nombre</td>
					<td width="25%">Imagen</td>
					<td>Acciones</td>
				</thead>
				<tbody>
					@foreach($subfamilias as $sub)
						<tr>
							<td>{!!$sub->familiaR->nombre!!}</td>
							<td>{!!$sub->nombre!!}</td>
							<td><img class="img-responsive" src="{{ asset($sub->imagen) }}"></td>
							<td>
							<a href="{{ route('subfamilia.edit',$sub->id) }}" class="btn btn-xs btn-warning">Editar</a>
							<a href="{{ route('subfamilia.destroy',$sub->id) }}" class="btn btn-xs btn-danger">Eliminar</a>
			                </td>
						</tr>
					@endforeach
				</tbody>
			</table>			
		</div>
    </div>
</div>
@endsection