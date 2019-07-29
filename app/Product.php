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

}
