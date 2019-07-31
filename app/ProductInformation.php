<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductInformation extends Model
{
    //
    protected $table = 'productinformation';
    protected $fillable = ['price','manucity','	pincode','gst','mrp','batch_no','weight'];
    
    public function product(){
        return $this->belongsTo('App\Product');
    }
    //get all data from filter
    public static function show($id){
        $product_show_data = ProductInformation::select()
        ->with('product.category')
        ->where('id', $id)
        ->get()
        ->toArray();
        return $product_show_data;
    }
    public static function showProduct($id){
        $product_show_data = ProductInformation::select()
        ->with('product.category')
        ->where('product_id', $id)
        ->get()
        ->toArray();
        return $product_show_data;
    }

}
