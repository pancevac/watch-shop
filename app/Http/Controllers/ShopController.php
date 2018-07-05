<?php

namespace App\Http\Controllers;

use App\Brand;
use App\OrderProduct;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class ShopController extends Controller
{
    public function __construct()
    {
        $brands = Brand::orderBy('name', 'ASC')->get();
        View::share('brands', $brands);
    }

    public function index(Request $request)
    {
        if ($request->has('price_min') && $request->has('price_max')) {
            $products = Product::getRandom(12, $request->price_min, $request->price_max);
            // Get min and max price for filter
            $min = $request->get('price_min');
            $max = $request->get('price_max');
        }
        else {

            $products = Product::getRandom(12);
            // Get min and max price for filter
            $min = Product::min('price');
            $max = Product::max('price');
        }

        // Get recommended based on top sales
        $recommended = OrderProduct::getTopSales(3);

        return view('pages.shop', compact('products', 'recommended', 'min', 'max'));
    }

    public function brand(Request $request, $slug)
    {
        // Get products based on chosen brand
        $products = Product::getBasedOnBrand($slug, $request, 12);



        // Get min and max price for products based on slug brand
        if ($request->has('price_min') && $request->has('price_max')) {
            $min = $request->get('price_min');
            $max = $request->get('price_max');
        }
        else {

            $min = Product::whereHas('brand', function ($brand) use ($slug) {
                $brand->whereSlug($slug);
            })->min('price');
            $max = Product::whereHas('brand', function ($brand) use ($slug) {
                $brand->whereSlug($slug);
            })->max('price');
        }



        // Get recommended products based on chosen brand
        $recommended = OrderProduct::getTopSales('3', $slug);

        return view('pages.shop', compact('products', 'recommended', 'min', 'max'));
    }

    public function search(Request $request)
    {
        if (!$request->has('search')) {
            return back()->with('Morate uneti neku rec pre slanja!');
        }
        $products = Product::searchProducts($request->search, 12);
        $min = $products->min('price');
        $max = $products->max('price');
        $recommended = OrderProduct::getTopSales(3);

        return view('pages.shop', compact('products', 'min', 'max', 'recommended'));
    }

}
