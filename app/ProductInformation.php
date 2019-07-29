<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductInformation extends Model
{
    //
    protected $table = 'productinformation';
    protected $fillable = ['price','manucity','	pincode','gst','mrp','batch_no','weight'];
    
    //get all data from filter
    public static function getDataFilter($id){
    }
}
