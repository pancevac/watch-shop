<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index()
    {
        return view('pages.home');
    }

    public function show($brandSlug, $Productslug)
    {
        // Eager load product with relationships
        $product = Product::with(['brand', 'comments.commented'])->whereHas('brand', function ($query) use ($brandSlug) {
            $query->where('slug', $brandSlug);
        })->where('slug', $Productslug)->first();
        if (empty($product)) {
            return abort(404);
        }
        //dd($product);
        // Related products
        $relatedProducts = Product::with('brand')->whereHas('brand', function ($query) use ($product) {
            $query->where('id', $product->brand->id);
        })->inRandomOrder()->take(6)->get();

        return view('pages.product', compact('product', 'relatedProducts'));
    }
}
