<?php

namespace App\Http\Controllers;

use App\Country;
use App\Http\Requests\CheckoutRequest;
use App\Traits\CalculateCoupon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    use CalculateCoupon;

    public function index()
    {
        $countries = Country::all();
        $cartItems = Cart::instance('shopping')->content();
        return view('pages.checkout', [
            'countries' => $countries,
            'cartItems' => $cartItems,
            'newTax' => self::calculateCoupon()->get('newTax'),
            'newSubtotal' => self::calculateCoupon()->get('newSubtotal'),
            'taxPercent' => self::calculateCoupon()->get('taxPercent'),
            'newTotal' => self::calculateCoupon()->get('newTotal'),
        ]);
    }

    public function store(CheckoutRequest $request)
    {
        //
    }
}
