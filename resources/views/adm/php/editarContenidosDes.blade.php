@extends('adm.cuerpo')
@section('titulo','Contenido Sección Descargas')
@section('contenido')
<div class="row">
    <div class="col-xs-12 col-md-10 col-md-offset-1">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Editar contenido</h3>
            </div>
            @include('flash::message')
			<table class="table table-striped table-bordered table-responsive">
				<thead>
					<td>Texto</td>
					<td>Acciones</td>
				</thead>
				<tbody>
						<tr>
						
							<td>
								
								{!! $contenido->texto !!}
							</td>
							<td><a href="{{ route('contenidodes.edit',$contenido->id) }}" class="btn btn-xs btn-warning">Editar</a>
							</td>
						</tr>
				</tbody>
			</table>			
		</div>
    </div>
</div>
@endsection