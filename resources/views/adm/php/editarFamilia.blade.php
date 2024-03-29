@extends('adm.cuerpo')
@section('titulo','Familias')
@section('contenido')

<div class="row">
	<div class="col-xs-12 col-md-11 col-md-offset-2">
		<div class="panel panel-default  col-sm-8">
            <div class="panel-heading">
                <h3 class="panel-title">Editar </h3>
            </div>

            @if(count($errors) > 0)
                <div class="alert alert-danger" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  @foreach($errors->all() as $error)
                <p>{{$error}}</p>
                  @endforeach
                </div>
            @endif

    {!! Form::model($familia, array('route' => array('familia.update', $familia->id), 'method' => 'PUT', 'files'=> true))!!}

    {{ csrf_field() }}

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('nombre','Nombre ', ['class' => 'control-label'])!!}
            {!! Form::text('nombre', $familia->nombre, ['class' => 'form-control', 'placeholder' => '', 'required'])!!}
        </div>
        
        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('Imagen','Imagen ', ['class' => 'control-label'])!!}
            {!! Form::file('imagen', ['class' => 'form-control'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('orden','Orden', ['class' => 'control-label'])!!}
            {!! Form::text('orden', $familia->orden, ['class' => 'form-control', 'placeholder' => 'Ingrese un orden','required'])!!}
        </div>
		

        <div class="form-group col-sm-12 pad-panel">
			<div class="col-sm-12">
				<input class="btn btn-success" type="submit" value='Editar'/>
			</div>
		</div>

      {!! Form::close() !!}
		</div>
	</div>	
</div>
<script src="//cdn.ckeditor.com/4.5.6/full/ckeditor.js"></script>
<script>
    CKEDITOR.replace("texto");
    CKEDITOR.config.width = 500;
    CKEDITOR.config.width = '99%';
</script>
@endsection