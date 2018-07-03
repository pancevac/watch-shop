<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
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
}
