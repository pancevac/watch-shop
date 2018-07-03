<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/shop', 'ShopController@index')->name('shop.index');

Route::post('/comment/{id}', 'CommentsController@comment')->name('comment');

// Shopping Cart
Route::get('/cart', 'CartsController@index')->name('cart.index');
Route::post('/cart', 'CartsController@create')->name('cart.create');
Route::post('/cart/{rowId}', 'CartsController@update')->name('cart.update');
Route::delete('/cart/{id}', 'CartsController@destroy')->name('cart.destroy');
Route::get('/cart/deleteAll', 'CartsController@destroyAll')->name('cart.destroyAll');

// Coupon
Route::post('/coupon', 'CouponsController@store')->name('coupon.store');
Route::delete('/coupon', 'CouponsController@destroy')->name('coupon.destroy');

// Pages
Route::get('checkout', 'CheckoutController@index')->name('checkout');
Route::get('product/{id}', 'PagesController@product')->name('pages.product');
Route::get('{brand}/{slug}', 'PagesController@show')->name('pages.show');
Route::get('/', 'PagesController@index')->name('/');
