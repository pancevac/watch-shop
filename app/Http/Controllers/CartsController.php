<?php

namespace App\Http\Controllers;

use App\Product;
use App\Traits\CalculateCoupon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CartsController extends Controller
{
    use CalculateCoupon;
    /**
     * Display shopping cart
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $cartItems = Cart::instance('shopping')->content();
        return view('pages.cart', [
            'cartItems' => $cartItems,
            'newTax' => self::calculateCoupon()->get('newTax'),
            'newSubtotal' => self::calculateCoupon()->get('newSubtotal'),
            'taxPercent' => self::calculateCoupon()->get('taxPercent'),
            'newTotal' => self::calculateCoupon()->get('newTotal'),
        ]);
    }
    /**
     * Add product to cart
     *
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|
     */
    public function create(Request $request)
    {
        if (!$request->has('addtocart') && $request->quantity < 1) {
            return abort(400);
        }
        $product = Product::find($request->addtocart);
        Cart::instance('shopping')->add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $request->quantity,
            'price' => isset($product->discount->percent_off) ?
                calculateDiscountPrice($product->price, $product->discount->percent_off) : $product->price,
        ])->associate(Product::class);

        return back()->with('success', 'Product added to Cart!');
    }

    public function update(Request $request, $rowId)
    {
        if (!$request->has('quantity')) {
           return abort(400);
        }
        // Update quantity of chosen product
        Cart::instance('shopping')->update($rowId, $request->quantity);
        return back()->with('success', 'Product quantity successfully updated!');
    }

    /**
     * Delete product from cart
     *
     * @param $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy($id)
    {
        Cart::instance('shopping')->remove($id);
        return back()->with('success', 'Product successfully removed from cart!');
    }

    public function destroyAll()
    {
        Cart::instance('shopping')->destroy();
        return redirect()->route('/')->with('success', 'Shopping cart cleaned!');
    }
}
