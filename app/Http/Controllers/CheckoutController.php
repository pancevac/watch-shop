<?php

namespace App\Http\Controllers;

use App\Country;
use App\Http\Requests\CheckoutRequest;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CheckoutController extends Controller
{
    public function index()
    {
        $countries = Country::all();
        $cartItems = Cart::instance('shopping')->content();
        return view('pages.checkout', compact('countries', 'cartItems'));
    }

    public function store(CheckoutRequest $request)
    {
        //
    }
}
