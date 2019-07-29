<div class="box-body">
    <div class="box container-fluid box-primary">

        <div class="row">
            <div class="col-md-10">
                <h4>Product Add</h4>
            </div>
        </div>
       
    <div class="row form-group">
        <div class="col-md-6">
            {{ Form::open(array('url' => 'product/','method'=>'post'))}}
            @csrf   
            <div class="form-group">
                {{ Form::label('Product Name', 'Product Name') }}
                {{ Form::text('product[name]',null, ['class' => 'form-control product_name','id' => 'product_name','placeholder'=>'Product Name'])}}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
            {{ Form::label('Product Quantity', 'Product Quantity') }}
            {{ Form::number('product[quantity]',null, ['class' => 'form-control product_quantity','id' => 'product_quantity','placeholder'=>'Product Quantity'])}}
            </div>
        </div> 
    </div>
    <div class="col-md-12">
        <div class="form-group">
        {{ Form::submit('Add Product',['class' => 'btn btn-success','id'=>'btnSubmit']) }}
        </div>
    </div>
      {{ Form::close() }}
</div>