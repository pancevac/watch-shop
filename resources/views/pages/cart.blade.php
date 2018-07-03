@extends('layout.app')

@section('title', 'Shopping Cart')

@section('content')

    <!-- ****** Cart Area Start ****** -->
    <div class="cart_area section_padding_100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table clearfix">
                        <table class="table table-responsive">
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($cartItems as $cartItem)
                                <tr>
                                    <td class="cart_product_img d-flex align-items-center">
                                        <a href="{{ route('pages.show', [
                                            'brand' => $cartItem->model->brand->name,
                                            'slug' => $cartItem->model->slug
                                        ]) }}"><img src="{{ asset($cartItem->model->image) }}" alt="Product"></a>
                                        <h6>{{ $cartItem->name }}</h6>
                                    </td>
                                    <td class="price"><span>${{ $cartItem->price }}</span></td>
                                    <td class="qty">
                                        <div class="quantity">
                                            <span class="qty-minus" onclick="var effect = document.getElementById('qty{{ $cartItem->id }}'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) {effect.value--; document.getElementById('form-quantity_{{ $cartItem->id }}').submit();} return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                            <form id="form-quantity_{{ $cartItem->id }}" method="POST" action="{{ route('cart.update', ['rowId' => $cartItem->rowId]) }}">
                                            <input type="number" class="qty-text" id="qty{{ $cartItem->id }}" step="1" min="1" max="99" name="quantity" value="{{ $cartItem->qty }}">
                                                {{ csrf_field() }}
                                            </form>
                                            <span class="qty-plus" onclick="var effect = document.getElementById('qty{{ $cartItem->id }}'); var qty = effect.value; if( !isNaN( qty )) {effect.value++; document.getElementById('form-quantity_{{ $cartItem->id }}').submit();} return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        </div>
                                    </td>
                                    <td class="total_price"><span>${{ $cartItem->subtotal }}</span></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>

                    </div>

                    <div class="cart-footer d-flex mt-30">
                        <div class="back-to-shop w-50">
                            <a href="shop-grid-left-sidebar.html">Continue shooping</a>
                        </div>
                        <div class="update-checkout w-50 text-right">
                            <a href="{{ route('cart.destroyAll') }}">clear cart</a>
                            <a href="#">Update cart</a>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="coupon-code-area mt-70">
                        <div class="cart-page-heading">
                            <h5>Cupon code</h5>
                            <p>Enter your cupone code</p>
                        </div>
                        <form action="{{ route('coupon.store') }}" method="POST">
                            {{ csrf_field() }}
                            <input type="search" name="coupon_code" placeholder="#569ab15">
                            <button type="submit">Apply</button>
                        </form>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="shipping-method-area mt-70">
                        <div class="cart-page-heading">
                            <h5>Shipping method</h5>
                            <p>Select the one you want</p>
                        </div>

                        <div class="custom-control custom-radio mb-30">
                            <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                            <label class="custom-control-label d-flex align-items-center justify-content-between" for="customRadio1"><span>Next day delivery</span><span>$4.99</span></label>
                        </div>

                        <div class="custom-control custom-radio mb-30">
                            <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                            <label class="custom-control-label d-flex align-items-center justify-content-between" for="customRadio2"><span>Standard delivery</span><span>$1.99</span></label>
                        </div>

                        <div class="custom-control custom-radio">
                            <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
                            <label class="custom-control-label d-flex align-items-center justify-content-between" for="customRadio3"><span>Personal Pickup</span><span>Free</span></label>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="cart-total-area mt-70">
                        <div class="cart-page-heading">
                            <h5>Cart total</h5>
                            <p>Final info</p>
                        </div>

                        <ul class="cart-total-chart">
                            <li><span>Subtotal</span> <span
                                @if(session()->has('coupon'))
                                style="text-decoration: line-through"
                                @endif
                                >${{ Cart::instance('shopping')->subtotal() }}</span></li>
                            @if(session()->has('coupon'))
                                <li><span>Discount({{ session()->get('coupon')['name'] }}) - <a
                                                href="javascript:{}" onclick="document.getElementById('remove-coupon').submit();">Remove</a></span> <span>-${{ session()->get('coupon')['discount'] }}</span></li>
                                <li><span>New subtotal</span> <span>${{ $newSubtotal }}</span></li>
                            @endif
                            <li><span>Tax({{ $taxPercent }}%)</span> <span>${{ $newTax }}</span></li>
                            <li><span>Shipping</span> <span>Free</span></li>
                            <li><span><strong>Total</strong></span> <span><strong>${{ $newTotal }}</strong></span></li>
                        </ul>
                        <form id="remove-coupon" method="POST" action="{{ route('coupon.destroy') }}" style="display: none">
                            {{ csrf_field() }}
                            {{ method_field('delete') }}
                        </form>
                        <a href="{{ route('checkout') }}" class="btn karl-checkout-btn">Proceed to checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****** Cart Area End ****** -->

@endsection