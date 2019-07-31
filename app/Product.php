<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $fillable = ['name','category_id','quantity'];
  

    public function category(){
        return $this->belongsTo('App\Categoty');
    }
    public function productinformation(){
        return $this->hasOne('App\ProductInformation');
    }
    public static function getDataFilter($id){
        $product_Data = Product::select()
        ->with('category')
        ->with('productinformation')
        ->where('category_id',$id)
        ->get()
        ->toarray();
        return $product_Data;
    }
    public static function add($data){

//        dd($data['name']);
        $product = Product::create($data);
        //from Product Table p_id store in infromation table
        $product_informarion = $product->productinformation()->create();
        return true;
        
    }
    public static function update_product($data,$id){
        $product_update_data = Product::where('id', $id)->update($data['product']);
        $product_update_data = ProductInformation::where('product_id', $id)->update($data['productinformation']);
        return true;
    }
    //getProduct for get all product
    // public static function getProduct($id){

    // }

}
