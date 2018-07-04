<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    protected $table = 'order_product';
    protected $fillable = array('order_id', 'product_id', 'quantity', 'price', 'percent_off');
    public $timestamps = false;

    public static function getTopSales($limit, $brand_slug = null) {

        $query = self::select('products.*', \DB::raw('COUNT(order_product.product_id) AS product_count'))
            ->join('products', 'order_product.product_id', '=', 'products.id');

            if ($brand_slug) {
                $query->join('brands', 'products.brand_id', '=', 'brands.id')
                    ->where('brands.slug', $brand_slug);
            }

            $recommended = $query->groupBy('order_product.product_id')
            ->orderBy('product_count', 'DESC')
            ->limit($limit)
            ->get();

            // If there is no products for given conditions or they are less than 3
            if ($recommended->isEmpty() || $recommended->count() < 3) {
                $newest = Product::take(3 - $recommended->count())->orderBy('updated_at', 'DESC')->get();

                return $recommended->merge($newest);
            }

            return $recommended;
    }
}
