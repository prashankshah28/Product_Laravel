@extends('../Product/layouts/app')
@section('content')
<div class="box-body">
    <div class="box container-fluid box-primary">

        <div class="row">
            <div class="col-md-10">
                <h4>Category</h4>
            </div>
        </div>
       
    <div class="row form-group">
        <div class="col-md-12">
            <div class="form-group">
                {{ Form::open(array('url' => 'product/','method'=>'post'))}}
                {{Form::select('product[category_id]',array('-1' => 'Please Select..')+$category,null,['class'=>'form-control','id' => 'category' ,'data-placeholder' => 'category','onchange' => 'fetchData()'])}}
              </div>
            </div>
        </div> 
    </div>
</div>
<div class="fetchproductData">

</div>


<!-- script listead -->
<script>
    function fetchData(){
        var select = document.getElementById('category').value;
        $.ajax({
        url: "{{ url('product/fetchData') }}",
        method: "POST",
        data: {
            product_id : select,
            _token: "{{ csrf_token() }}"
        },
        success: function(data) {
            $(".fetchFilter").html(data);
        }
    });
    }
</script>
@endsection
