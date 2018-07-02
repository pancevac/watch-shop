<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->string('email')->nullable();
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->string('address1')->nullable();
            $table->string('address2')->nullable();
            $table->string('company')->nullable();
            $table->string('city')->nullable();
            $table->integer('country_id')->unsigned();
            $table->integer('post_code')->nullable();
            $table->integer('phone')->nullable();
            $table->string('card_name')->nullable();
            $table->integer('discount')->nullable();
            $table->integer('discount_code')->nullable();
            $table->integer('subtotal')->nullable();
            $table->integer('tax')->nullable();
            $table->integer('total')->nullable();
            $table->string('payment_gateway')->nullable();
            $table->string('error')->nullable();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('country_id')->references('id')->on('countries');
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
        Schema::dropIfExists('orders');
    }
}
