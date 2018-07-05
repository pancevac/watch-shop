<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Product;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index()
    {
        $banners = Banner::getBanner();
        //dd($banners);
        $products = Product::getFeatured(20);
        return view('pages.home', compact('banners', 'products'));
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
        })->where('id', '<>', $product->id)->inRandomOrder()->take(6)->get();

        return view('pages.product', compact('product', 'relatedProducts'));
    }

    public function product(Request $request, $id)
    {
        if (!$request->ajax()) {
            return abort(404);
        }
        $product = Product::with(['brand'])->where('id', $id)->first();
        if (empty($product)) {
            return response()->json(false);
        }
        $product->rating = $product->averageRate();
        return response()->json($product);
    }
}
