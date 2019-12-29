@extends('adm.cuerpo')
@section('titulo','Post-ventas')
@section('contenido')

<div class="row">
    <div class="col-xs-12 col-md-8 col-md-offset-2">
        <div class="panel panel-default table-responsive">
            <div class="panel-heading">
                <h3 class="panel-title">Editar 
               </h3>
            </div>
            @include('flash::message')
			<table class="table table-striped table-bordered ">

				<thead>
					<td>Texto</td>
					<td width="25%">Imagen</td>
					<td>Acciones</td>
				</thead>
				<tbody>
					@foreach($postventas as $postventa)
						<tr>
							<td>{!!$postventa->texto!!}</td>
							<td><img class="img-responsive" src="{{ asset($postventa->imagen) }}"></td>
							<td>
							<a href="{{ route('postventa.edit',$postventa->id) }}" class="btn btn-xs btn-warning">Editar</a>
							
			                </td>
						</tr>
					@endforeach
				</tbody>
			</table>			
		</div>
    </div>
</div>
@endsection