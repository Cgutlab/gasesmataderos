@extends('adm.cuerpo')
@section('titulo','Sub Familias')
@section('contenido')

<div class="row">
	<div class="col-xs-12 col-md-11 col-md-offset-2">
		<div class="panel panel-default  col-sm-8">
            <div class="panel-heading">
                <h3 class="panel-title">Crear sub familia</h3>
            </div>
            @if(count($errors) > 0)
                <div class="alert alert-danger" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  @foreach($errors->all() as $error)
                <p>{{$error}}</p>
                  @endforeach
                </div>
            @endif

    {!! Form::open([ 'route' => 'subfamilia.store', 'method' => 'POST', 'class'=> 'form-horizontal', 'files' => true ])!!}

    {{ csrf_field() }}

        <div class="form-group col-sm-12 pad-panel" >

            {!!Form::label('nombre','Nombre ', ['class' => 'control-label'])!!}
            {!! Form::text('nombre', null , ['class' => 'form-control', 'placeholder' => 'Ingrese el nombre de la subfamilia', 'required'])!!}
        </div>
       
        <div class="form-group col-sm-12 pad-panel" >

            {!!Form::label('Imagen','Imagen (Tamaño recomendado 362x311)', ['class' => 'control-label'])!!}
            {!! Form::file('imagen', ['class' => 'form-control'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('familia','Familia', ['class' => 'control-label'])!!}
            {!! Form::select('familia', $familias ,null ,['class' => 'form-control','required'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >

            {!!Form::label('orden','Orden', ['class' => 'control-label'])!!}
            {!! Form::text('orden', null, ['class' => 'form-control', 'placeholder' => 'Ingrese un orden'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel">

			<div class="col-sm-12">

				<input class="btn btn-success" type="submit" value='Crear'/>

			</div>

		</div>

         

      {!! Form::close() !!}

				

		</div>

	</div>	

</div>



@endsection