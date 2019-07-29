<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Productinformations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productinformation', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('product_id')->index('product_id');
            $table->integer('price');
            $table->string('manucity',50);
            $table->integer('pincode');
            $table->string('gst',50);
            $table->integer('mrp');
            $table->date('batch_no');
            $table->integer('weight');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productinformation');
    }
}
