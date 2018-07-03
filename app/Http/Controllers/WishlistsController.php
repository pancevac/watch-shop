<?php

namespace App\Http\Controllers;

use App\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Grab saved wishlist instance from db
        Cart::instance('wishlist')->restore(Auth::user()->id);

        // Load it
        $products = Cart::instance('wishlist')->content();

        // Update instance in db because it is lost after retrieving from db
        Cart::instance('wishlist')->store(Auth::user()->id);

        return view('pages.wishlist', [
            'cartItems' => $products
        ]);
    }

    /**
     * Add all products from wishlist in shopping cart
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateAll(Request $request)
    {
        dd($request);
        if ($request->submit) {

            $wishlistProducts = Cart::instance('wishlist')->content();
            if (empty($wishlistProducts)) {
                return back()->with('error', 'You can not update cart with empty wish list!');
            }

            // Get shopping cart instance
            $shopping = Cart::instance('shopping')->content();

            foreach ($wishlistProducts as $product) {

                // Check if there isn't already product in shopping cart
                if (!$shopping->has($product->rowId)) {

                    // Adding products to shopping cart instance
                    Cart::instance('shopping')->add([
                        'id' => $product->id,
                        'name' => $product->name,
                        'qty' => 1,
                        'price' => $product->price,
                    ]);
                }
            }
            // Success
            return redirect()->route('wishlist.index')->with('success', 'Items successfully added in shopping cart!');
        }
    }

    /**
     * Add specified product to wish list
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function add($id)
    {
        // Retrieve product
        $product = Product::find($id);

        // Restore previously wishlist instance from db if any. Note: this will delete record from db after getting info
        Cart::instance('wishlist')->restore(Auth::user()->id);

        // Check if product is already added in wish list
        if (!Cart::instance('wishlist')->content()->where('id', $id)->isEmpty()) {

            // Store unchanged wish list to db because it lost after retrieving
            Cart::instance('wishlist')->store(Auth::user()->id);
            return back()->with('error', 'Item is already added in wish list.');
        }

        // Add product to wishlist instance
        Cart::instance('wishlist')->add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => 1,
            'price' => $product->price,
        ])->associate(Product::class);

        // Update instance in db
        Cart::instance('wishlist')->store(Auth::user()->id);

        return back()->with('success', 'Item added to wish list!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Restore instance from db
        Cart::instance('wishlist')->restore(Auth::user()->id);

        // Remove item from instance
        Cart::instance('wishlist')->remove($id);

        // Update instance in db
        Cart::instance('wishlist')->store(Auth::user()->id);

        return back()->with('success', 'Item successfully removed from wish list!');
    }

    public function destroyAll()
    {
        if (!Cart::instance('wishlist')->restore(Auth::user()->id)) {
            return back();
        }
        Cart::instance('wishlist')->restore(Auth::user()->id);
        Cart::instance('wishlist')->destroy();
        return back()->with('success', 'Your wish list is now empty!');
    }
}
