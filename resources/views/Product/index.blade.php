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
                {{Form::select('product[category_id]',array('-1' => 'Please Select..')+$category,null,['class'=>'form-control','id' => 'category' ,'data-placeholder' => 'category','onchange' => 'fetchData()'])}}
              </div>
            </div>
        </div> 
    </div>
</div>
<div class="fetchproductData">
    @include('Product/ajaxfetchproduct')
</div>
@endsection
<!-- Links -->
@section('links')
<link rel="stylesheet" href="{{asset('bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css')}}">
@endsection
@section('inline_scripts')
<script>
    function fetchData(){
        var select = document.getElementById('category').value;
        if(select == -1){
            document.getElementById("btnSubmit").disabled = true;
        }
        else{
            $.ajax({
            url: "{{ url('product/fetchData') }}",
            method: "POST",
            data: {
                product_id : select,
                _token: "{{ csrf_token() }}"
            },
            success: function(data) {
                $(".fetchproductData").html(data);
            }
        });   
    }
}
fetchData();
</script>
<script>
    function setCategory(){
        var select = document.getElementById('category').value;
        if(select == -1){
            document.getElementById("btnSubmit").disabled = true;
        }
        document.getElementById("product_category").value = select;
    }
setCategory();
</script>
@endsection
