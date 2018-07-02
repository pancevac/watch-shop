<?php

namespace App\Http\Controllers;

use App\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CartsController extends Controller
{
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
            'price' => $product->price,
        ])->associate(Product::class);

        return back()->with('success', 'Item added to Cart!');
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
}
