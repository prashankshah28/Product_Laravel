    <div class="col-md-12">
        <div class="form-group">
        {{ Form::hidden('product[category_id]',null, ['class' => 'form-control product_name','id' => 'product_category','placeholder'=>'Product Category'])}}
        {{ Form::submit('Add Product',['class' => 'btn btn-success','id'=>'btnSubmit','onclick' => 'setCategory()']) }}
        </div>
    </div>
