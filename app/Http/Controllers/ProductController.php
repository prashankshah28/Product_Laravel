<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categoty;
use App\ProductInformation;
use App\Product;
use Illuminate\Validation\Validator;

class ProductController extends Controller
{
        /**
     * Display a listing of the Product.
     *
     * @return \Illuminate\Http\Response
    */

    public function fetchdata(Request $request){
        if ($request->ajax()) {             
            if ($request->product_id != '' ) {
                $product_data =Product::getDataFilter($request->product_id);
            } 
            else{
                $product_data = "No Data Found Please Insert";
            }
            return view('Product/ajaxfetchproduct')->with('product_dataFetch',$product_data)->render();
        }        
    }
    /**
     * Display a listing of the Category.
     *
     * @return \Illuminate\Http\Response
    */

    public function category(){
        $category = Categoty::pluck('name','id')->toArray();
        $category_id = 'null';
        return view('Product/index')->with(compact('category','category_id'));
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
       // $category_id = $request->product['category_id'];
        $product_store = Product::add($request['product']); 
        return redirect('/')->with('flash_message_success', 'Product Added SuccessFully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product_Edit = ProductInformation::show($id);
        $category_id = $product_Edit[0]['product']['category_id'];
        $batch_date = $product_Edit[0]['batch_no'];
        $product_Edit[0]['batch_no'] = date('d-m-Y', strtotime($batch_date)); 
        $category = Categoty::pluck('name','id')->toArray();
        return view('Product/index')->with(compact('product_Edit','category','category_id'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        dd($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product_Data = $request->all();
        $batch_date = $product_Data['productinformation']['batch_no'];
        $product_Data['productinformation']['batch_no'] = date('Y-m-d', strtotime($batch_date));
        $product_Edit_Data = Product::update_product($product_Data,$id);
        return redirect('/')->with('flash_message_success', 'Product Updated SuccessFully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
