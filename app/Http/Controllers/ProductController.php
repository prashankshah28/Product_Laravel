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
        return view('Product/index')->with('category', $category);
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
    
        $product_store = Product::add($request['product']);
        return redirect('/');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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
