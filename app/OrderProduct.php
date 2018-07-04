<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    protected $table = 'order_product';
    protected $fillable = array('order_id', 'product_id', 'quantity', 'price', 'percent_off');
    public $timestamps = false;

    public static function getTopSales($limit) {

        return self::select('products.*', \DB::raw('COUNT(order_product.product_id) AS product_count'))
            ->join('products', 'order_product.product_id', '=', 'products.id')
            ->groupBy('order_product.product_id')
            ->orderBy('product_count', 'DESC')
            ->limit($limit)
            ->get();
    }
}
