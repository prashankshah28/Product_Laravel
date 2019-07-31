function productData() {
    var select_ProductID = document.getElementById('product_id').value;
    //alert(select_ProductID);
    if (select_ProductID == "-1") {
        $("#addProduct").hide();
    } else if (select_ProductID == "-2") {
        $("#editProduct").hide();
        $("#addProduct").show();
    } else {
        $("#editProduct").show();
        $("#addProduct").hide();
        $.ajax({
            url: "{{ url('product') }}" + '/' + select_ProductID + '/edit',
            method: "GET",
            data: {
                product_id: select_ProductID,
                _token: "{{ csrf_token() }}"
            },
            success: function(data) {
                $(".fetchproduct_Edit_Data").html(data);
            }
        });
    }
}

function fetchData() {
    //timeout
    $(document).ready(function() {
        setTimeout(function() {
            $(".flash-message").remove();
        }, 5000);
    });
    var select = document.getElementById('category').value;
    if (select == -1) {
        document.getElementById("btnSubmit").disabled = true;
    } else {
        $.ajax({
            url: "{{ url('product/fetchData') }}",
            method: "POST",
            data: {
                category_id: select,
                _token: "{{ csrf_token() }}"
            },
            success: function(data) {
                $(".fetchproductData").html(data);
            }
        });
    }
}
fetchData();

function setCategory() {
    var select = document.getElementById('category').value;
    document.getElementById('product_category').value = select;
    if (select == -2) {
        document.getElementById("btnSubmit").disabled = true;
    }
}
setCategory();