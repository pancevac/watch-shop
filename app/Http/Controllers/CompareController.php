<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class CompareController extends Controller
{
    public function compare($id)
    {
        // Check if there is first session
        if (session()->has('compare1')) {
            // Check if product is same as first
            if (session()->get('compare1') === $id) {
                return redirect()->back()->with('error', 'Selected product is already added as first Product, please choose different!');
            }
            // Add product as second product for compare
            if ($this->isExist($id)) {
                session()->put('compare2', $id);
                // Redirect to to view with compare products
                $products = $this->compareMerge();
                return view('pages.compare', compact('products'));
            }
            return back()->with('error', 'Unknown product, try again!');
        }
        // If there isn't first product session, check existence and add it to session
        if ($this->isExist($id)) {

            session()->put('compare1', $id);
            return redirect()->route('shop.index')->with('success', 'First product successfully added to compare, please chose another one.');
        }
    }

    private function isExist($id)
    {
        if (Product::where('id', $id)->count()) {
            return true;
        }
        return false;
    }

    private function compareMerge()
    {
        // Load products
        $product1 = Product::with(['brand', 'comments.commented'])->where('id', session()->get('compare1'))->first();
        $product2 = Product::with(['brand', 'comments.commented'])->where('id', session()->get('compare2'))->first();

        session()->forget('compare1');
        session()->forget('compare2');

        return compact('product1', 'product2');
    }
}
