<?php

namespace App\Traits;

use Gloudemans\Shoppingcart\Facades\Cart;

trait CalculateCoupon
{
    /**
     * Returns calculated cart prices based on coupons
     *
     * @return \Illuminate\Support\Collection
     */
    protected static function calculateCoupon()
    {
        // Calculate
        $taxPercent = config('cart.tax');
        $tax = $taxPercent / 100;
        $discount = session()->get('coupon')['discount'] ?? 0;
        $code = session()->get('coupon')['name'] ?? null;

        $newSubtotal = (Cart::instance('shopping')->subtotal() - $discount);
        $newTax = $newSubtotal * $tax;
        $newTotal = $newSubtotal + $newTax;
        if ($newTotal < 0) {
            $newTotal = 0;
        }
        if ($newSubtotal < 0) {
            $newSubtotal = 0;
        }
        if ($newTax < 0) {
            $newTax = 0;
        }

        return collect([
            'taxPercent' => $taxPercent,
            'discount' => $discount,
            'newSubtotal' => $newSubtotal,
            'newTax' => $newTax,
            'newTotal' => $newTotal,
            'code' => $code,
        ]);
    }
}