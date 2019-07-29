@if(isset($product_dataFetch))
{{ Form::open(array('url' => 'product/','method'=>'post'))}}
<div class="box-body">
    <div class="box container-fluid box-primary">

        <div class="row">
            <div class="col-md-10">
                <h4>Product Add</h4>
            </div>
        </div>
       
    <div class="row form-group">
        <div class="col-md-6">
            @csrf   
            <div class="form-group">
                {{ Form::label('Product Name', 'Product Name') }}
                {{ Form::label('s', '*',['style'=>'color:red']) }}
                {{ Form::text('product[name]',null, ['class' => 'form-control product_name','id' => 'product_name','placeholder'=>'Product Name'])}}
                @if($errors->first('product.name'))
                <div style="color:red">
                    <span>{{$errors->first('product.name')}}</span>
                </div>
                @endif
          
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
            {{ Form::label('Product Quantity', 'Product Quantity') }}
            {{ Form::label('s', '*',['style'=>'color:red']) }}
            {{ Form::number('product[quantity]',null, ['class' => 'form-control product_quantity','id' => 'product_quantity','placeholder'=>'Product Quantity'])}}
            </div>
        </div> 
    </div>
    <div class="col-md-12">
        <div class="form-group">
        {{ Form::hidden('product[category_id]',null, ['class' => 'form-control product_name','id' => 'product_category','placeholder'=>'Product Category'])}}
        {{ Form::submit('Add Product',['class' => 'btn btn-success','id'=>'btnSubmit','onclick' => 'setCategory()']) }}
        </div>
    </div>
      {{ Form::close() }}
</div>
<section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Hover Data Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="product_data" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Product Quantity</th>
                  <th>Price</th>
                  <th>Manufacture City</th>
                  <th>Pincode</th>
                  <th>Gst</th>
                  <th>Mrp</th>
                  <th>Batch No</th>
                  <th>Weight</th>
              </tr>
              </thead>
              <tbody>
              @if(isset($product_dataFetch))
              @foreach($product_dataFetch as $product)
              <tr>
                <td>{{ $product['name'] ? $product['name'] : 'Pending'  }}</td>
                <td>{{ $product['quantity'] ? $product['quantity'] : 'Pending'  }}</td>
                <td>{{ $product['productinformation']['price'] ? $product['productinformation']['price'] : 'Pending'  }}</td>
                <td>{{ $product['productinformation']['manucity']? $product['productinformation']['manucity']: 'Pending'  }}</td>
                <td>{{ $product['productinformation']['pincode']? $product['productinformation']['pincode']: 'Pending'  }}</td>
                <td>{{ $product['productinformation']['gst']? $product['productinformation']['gst']: 'Pending'  }}</td>
                <td>{{ $product['productinformation']['mrp']? $product['productinformation']['mrp']: 'Pending'  }}</td>
                <td>{{ $product['productinformation']['batch_no']? $product['productinformation']['batch_no'] : 'Pending' }}</td>
                <td>{{ $product['productinformation']['weight']? $product['productinformation']['weight'] : 'Pending'  }}</td>
              </tr>
              @endforeach
              @endif
              </tbody>

              
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
</section>
@endif
<script src="{{ asset('bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script src="{{ asset('bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
<script>
 $(function() {
    $('#product_data').DataTable({
        'lengthChange': true,
        'searching': true,
        'ordering': true,
        'info': true,
        'autoWidth': true
    })
})
</script>
