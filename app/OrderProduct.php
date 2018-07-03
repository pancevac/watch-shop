<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    protected $table = 'order_product';
    protected $fillable = array('order_id', 'product_id', 'quantity', 'price', 'percent_off');
    public $timestamps = false;
}
