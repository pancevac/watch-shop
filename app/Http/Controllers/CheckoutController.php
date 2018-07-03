<?php

namespace App\Http\Controllers;

use App\Country;
use App\Http\Requests\CheckoutRequest;
use App\Order;
use App\Traits\CalculateCoupon;
use Cartalyst\Stripe\Exception\CardErrorException;
use Cartalyst\Stripe\Stripe;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

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

    public function charge(CheckoutRequest $request)
    {
        // Get all cart items
        $orders = Cart::instance('shopping')->content();
        $contents = '';
        // List items
        foreach ($orders as $content) {
            $contents .= $content->name.': '.$content->qty.', ';
        }
        // Charge with stripe
        try {
            $stripe = new Stripe();
            $stripe->charges()->create([
                'amount' => self::calculateCoupon()->get('newTotal'),
                'currency' => 'usd',
                'description' => 'Order',
                'source' => $request->stripeToken,
                'metadata' => [
                    'contents' => $contents,
                    'quantity' => Cart::instance('shopping')->count(),
                    'discount' => collect(session()->get('coupon'))->toJson(),
                ],
            ]);

            // Order table insert (pivot also)
            $order = Order::addToOrdersTables($request, null);

            // Send order mail to customer

            Cart::instance('shopping')->destroy();
            session()->forget('coupon');
            return back()->with('Thank you! Your payment has been successfully accepted!');
        }
        // Catch error with invalid card
        catch (CardErrorException $e) {

            Order::addToOrdersTables($request, $e->getMessage());
            return back()->with('error', $e->getMessage());
            // Catch any other error
        } catch (\Exception $e) {

            Order::addToOrdersTables($request, $e->getMessage());
            Log::error('Error with charging card: '.$e->getMessage());
        }

        return back()->with('error', 'An error occured, please try again later!');
    }
}
