@extends('adm.cuerpo')
@section('titulo','Productos')
@section('contenido')

<div class="row">
	<div class="col-xs-12 col-md-11 col-md-offset-2">
		<div class="panel panel-default  col-sm-8">
            <div class="panel-heading">
                <h3 class="panel-title">Crear producto</h3>
            </div>
            @if(count($errors) > 0)
                <div class="alert alert-danger" role="alert">
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  @foreach($errors->all() as $error)
                <p>{{$error}}</p>
                  @endforeach
                </div>
            @endif
    {!! Form::open([ 'route' => 'producto.store', 'method' => 'POST', 'class'=> 'form-horizontal', 'files' => true ])!!}
    {{ csrf_field() }}

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('nombre','Nombre ', ['class' => 'control-label'])!!}
            {!! Form::text('nombre', null , ['class' => 'form-control', 'placeholder' => 'Ingrese el nombre del producto', 'required'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('texto','Descripción ', ['class' => 'control-label'])!!}
            {!! Form::textarea('texto',null, ['class' => 'form-control'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('texto2','Texto ', ['class' => 'control-label'])!!}
            {!! Form::textarea('texto2',null, ['class' => 'form-control'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('pdf','PDF ', ['class' => 'control-label'])!!}
            {!! Form::file('pdf', ['class' => 'form-control'])!!}
        </div>
       
        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('Imagen','Imagen ', ['class' => 'control-label'])!!}
            {!! Form::file('imagen', ['class' => 'form-control'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('subfamilia','Subfamilia ', ['class' => 'control-label'])!!}
            {!! Form::select('subfamilia', $subfamilias, null, ['class' => 'form-control','required'])!!}
        </div>

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('relacionado1','Producto Relacionado 1 ', ['class' => 'control-label'])!!}
            {!! Form::select('relacionado1', $productos, null, ['class' => 'form-control','placeholder'=> 'Ninguno'])!!}
        </div>
        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('relacionado2','Producto Relacionado 2 ', ['class' => 'control-label'])!!}
            {!! Form::select('relacionado2', $productos, null, ['class' => 'form-control','placeholder'=> 'Ninguno'])!!}
        </div>
        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('relacionado3','Producto Relacionado 3 ', ['class' => 'control-label'])!!}
            {!! Form::select('relacionado3', $productos, null, ['class' => 'form-control','placeholder'=> 'Ninguno'])!!}
        </div>
        

        <div class="form-group col-sm-12 pad-panel" >
            {!!Form::label('orden','Orden', ['class' => 'control-label'])!!}
            {!! Form::text('orden', null, ['class' => 'form-control', 'placeholder' => 'Ingrese un orden','required'])!!}
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
<script src="//cdn.ckeditor.com/4.5.6/full/ckeditor.js"></script>
<script>
    CKEDITOR.replace("texto");
    CKEDITOR.replace("texto2");
    CKEDITOR.config.width = 500;
    CKEDITOR.config.width = '99%';
</script>
@endsection