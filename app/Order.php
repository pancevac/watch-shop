<?php

namespace App;

use App\Traits\CalculateCoupon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use CalculateCoupon;

    protected $fillable = array(
        'user_id', 'email', 'first_name', 'last_name', 'address1', 'address2', 'company', 'city',
        'country_id', 'post_code', 'phone', 'name', 'discount',
        'discount_code', 'subtotal', 'tax', 'total', 'payment_gateway', 'error',
    );

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function products()
    {
        return $this->belongsToMany(Product::class)->withPivot('quantity', 'price', 'percent_off');
    }

    public static function addToOrdersTables($request, $error)
    {
        // Insert into orders table
        $order = self::create([
            'user_id' => auth()->user() ? auth()->user()->id : null,
            'email' => $request->email,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'address1' => $request->address1,
            'address2' => $request->address2,
            'country_id' => $request->country,
            'city' => $request->city,
            'post_code' => $request->post_code,
            'phone' => $request->phone_number,
            'card_name' => $request->card_name,
            'discount' => self::calculateCoupon()->get('discount'),
            'discount_code' => self::calculateCoupon()->get('code'),
            'subtotal' => self::calculateCoupon()->get('newSubtotal'),
            'tax' => self::calculateCoupon()->get('newTax'),
            'total' => self::calculateCoupon()->get('newTotal'),
            'error' => $error,
        ]);

        // Insert into pivot order_product table
        foreach (Cart::instance('shopping')->content() as $item) {
            OrderProduct::create([
                'order_id' => $order->id,
                'product_id' => $item->id,
                'quantity' => $item->qty,
                'price' => $item->price,
                'percent_off' => isset(Product::find($item->id)->discount->percent_off) ? Product::find($item->id)->discount->percent_off : null,
            ]);
        }

        return $order;
    }
}
