<?php

namespace App\Http\Controllers;

use App\Brand;
use App\OrderProduct;
use App\Product;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    public function index()
    {
        $brands = Brand::orderBy('name', 'ASC')->get();
        $products = Product::getRandom(12);
        // Get recommended based on top sales
        $recommended = OrderProduct::getTopSales(3);

        return view('pages.shop', compact('brands', 'products', 'recommended'));
    }
}
