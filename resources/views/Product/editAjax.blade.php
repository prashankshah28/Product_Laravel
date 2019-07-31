
@if(isset($product_Edit))
{{ Form::open(array($product_Edit[0]['product']['id'],'route' => array('product.update', $product_Edit[0]['product']['id']), 'method' => 'PUT')) }}
@csrf
<div class="box-body">
    <div class="box container-fluid box-primary">

        <div class="row">
            <div class="col-md-12">
                <h4>Product Edit [{{$product_Edit[0]['product']['category']['name']}}]</h4>
            </div>
        </div>
    <div class="row form-group">
        <div class="col-md-4">
            @csrf
            <div class="form-group">
                {{ Form::label('Product Name', 'Product Name') }}
                {{ Form::label('s', '*',['style'=>'color:red']) }}
                {{ Form::text('product[name]',$product_Edit[0]['product']['name'] ? $product_Edit[0]['product']['name'] : null , ['class' => 'form-control product_name','id' => 'product_name','placeholder'=>'Product Name'])}}
                @if($errors->first('product.name'))
                <div style="color:red">
                    <span>{{$errors->first('product.name')}}</span>
                </div>
                @endif
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
            {{ Form::label('Product Quantity', 'Product Quantity') }}
            {{ Form::label('s', '*',['style'=>'color:red']) }}
            {{ Form::number('product[quantity]',$product_Edit[0]['product']['quantity'] ? $product_Edit[0]['product']['quantity'] : null, ['class' => 'form-control product_quantity','id' => 'product_quantity','placeholder'=>'Product Quantity'])}}
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
            {{ Form::label('Price', 'Product Price') }}
            {{ Form::label('s', '*',['style'=>'color:red']) }}
            {{ Form::number('productinformation[price]',$product_Edit[0]['price'] ? $product_Edit[0]['price'] : null, ['class' => 'form-control product_quantity','id' => 'product_quantity','placeholder'=>'Product Price'])}}
            </div>
        </div> 
 
    </div>

    <div class="row form-group">
        <div class="col-md-4">
            <div class="form-group">
                {{ Form::label('Manufacture City', 'Manufacture City') }}
                {{ Form::label('s', '*',['style'=>'color:red']) }}
                {{ Form::text('productinformation[manucity]',$product_Edit[0]['manucity'] ? $product_Edit[0]['manucity'] : null , ['class' => 'form-control manucity','id' => 'product_name','placeholder'=>'Manufacture City'])}}
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
            {{ Form::label('Pincode', 'Pincode') }}
            {{ Form::label('s', '*',['style'=>'color:red']) }}
            {{ Form::number('productinformation[pincode]',$product_Edit[0]['pincode'] ? $product_Edit[0]['pincode'] : null, ['class' => 'form-control pincode','id' => 'product_quantity','placeholder'=>'Pincode'])}}
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
            {{ Form::label('Gst', 'Gst') }}
            {{ Form::label('s', '*',['style'=>'color:red']) }}
            {{ Form::number('productinformation[gst]',$product_Edit[0]['gst'] ? $product_Edit[0]['gst'] : null, ['class' => 'form-control gst','id' => 'product_quantity','placeholder'=>'Gst'])}}
            </div>
        </div> 
 
    </div>

    <div class="row form-group">
        <div class="col-md-4">
            <div class="form-group">
                {{ Form::label('Mrp', 'Mrp') }}
                {{ Form::label('s', '*',['style'=>'color:red']) }}
                {{ Form::number('productinformation[mrp]',$product_Edit[0]['mrp'] ? $product_Edit[0]['mrp'] : null , ['class' => 'form-control mrp','id' => 'mrp','placeholder'=>'Mrp'])}}
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
            {{ Form::label('Batch No', 'Batch No') }}
            {{ Form::label('s', '*',['style'=>'color:red']) }}
            {{ Form::text('productinformation[batch_no]',$product_Edit[0]['batch_no'] ? $product_Edit[0]['batch_no'] : null, ['class' => 'form-control pull-right','id' => 'datepicker','placeholder'=>'Batch No'])}}
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
            {{ Form::label('Weight', 'Weight') }}
            {{ Form::label('s', '*',['style'=>'color:red']) }}
            {{ Form::number('productinformation[weight]',$product_Edit[0]['weight'] ? $product_Edit[0]['weight'] : null, ['class' => 'form-control gst','id' => 'weight','placeholder'=>'Weight'])}}
            </div>
        </div> 
    </div>
    <div class="row form-group">
            <div class="col-md-12">
                <div class="form-group">
                {{ Form::submit('Edit Product',['class' => 'btn btn-success']) }}
                </div>
            </div>
    </div>
      {{ Form::close() }}
</div>
@endif
<link rel="stylesheet" href="{{asset('bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
<script src="{{asset('bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
<script>
$('#datepicker').datepicker({
      autoclose: true
})
</script>