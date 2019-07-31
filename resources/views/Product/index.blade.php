@extends('../Product/layouts/app')
@section('content')
<div class="flash-message">
  @if (Session::has('flash_message_error'))
  <div class="alert alert-error alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>{!! session('flash_message_error') !!}</strong>
  </div>
  @endif
  @if (Session::has('flash_message_success'))
  <div class="alert alert-success alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong>{!! session('flash_message_success') !!}</strong>
  </div>
  @endif
</div>

<div class="box-body">
    <div class="box container-fluid box-primary">
        <div class="row">
            <div class="col-md-12">
                <h4>Category</h4>
            </div>
        </div>
    <div class="row form-group">
        <div class="col-md-6">
            <div class="form-group">
            <select class="form-control select2" onchange="fetchData()" id="category">
                    <option selected value="-1">Please Select Product</option>
                    @foreach($category as $product_name)
                        <option value="{{ $product_name['id'] }}">{{ $product_name['name'] }}</option>
                    @endforeach
                </select>
              </div>
        </div>
        <div class="col-md-6">

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
    function productData(){
        var select_ProductID = document.getElementById('product_id').value;
        //alert(select_ProductID);
        if(select_ProductID == "-1"){
        $("#addProduct").hide(); 
        }
        else if(select_ProductID == "-2"){
        $("#editProduct").hide(); 
        $("#addProduct").show(); 
        }
        else{
            $("#editProduct").show();
            $("#addProduct").hide(); 
            $.ajax({
            url: "{{ url('product') }}" + '/' + select_ProductID + '/edit'  ,
            method: "GET",
            data: {
                product_id : select_ProductID,
                _token: "{{ csrf_token() }}"
            },
            success: function(data) {
                $(".fetchproduct_Edit_Data").html(data);
            }
        });   
    }
}   
    function fetchData(){
        //timeout
        $(document).ready(function() {
        setTimeout(function() {
            $(".flash-message").remove();
        }, 5000);
    });
        var select = document.getElementById('category').value;
        if(select == -1){
            document.getElementById("btnSubmit").disabled = true;
        }
        else{
            $.ajax({
            url: "{{ url('product/fetchData') }}",
            method: "POST",
            data: {
                category_id : select,
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
        document.getElementById('product_category').value = select;
        if(select == -2){
            document.getElementById("btnSubmit").disabled = true;
        }
}
setCategory();
</script>
@endsection
