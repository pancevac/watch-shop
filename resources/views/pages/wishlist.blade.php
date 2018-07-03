@extends('layout.app')

@section('title', 'Wish list')

@section('content')

    <!-- ****** Cart Area Start ****** -->
    <div class="cart_area section_padding_100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table clearfix">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Product</th>
                                <th>Price</th>
                                <th>Total</th>
                                <th>Add</th>
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
                                    {{--<td class="qty">
                                        <div class="quantity">
                                            <span class="qty-minus" onclick="var effect = document.getElementById('qty{{ $cartItem->id }}'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) {effect.value--; document.getElementById('form-quantity_{{ $cartItem->id }}').submit();} return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                            <form id="form-quantity_{{ $cartItem->id }}" method="POST" action="{{ route('cart.update', ['rowId' => $cartItem->rowId]) }}">
                                                <input type="number" class="qty-text" id="qty{{ $cartItem->id }}" step="1" min="1" max="99" name="quantity" value="{{ $cartItem->qty }}">
                                                {{ csrf_field() }}
                                            </form>
                                            <span class="qty-plus" onclick="var effect = document.getElementById('qty{{ $cartItem->id }}'); var qty = effect.value; if( !isNaN( qty )) {effect.value++; document.getElementById('form-quantity_{{ $cartItem->id }}').submit();} return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        </div>
                                    </td>--}}
                                    <td class="total_price"><span>${{ $cartItem->subtotal }}</span></td>
                                    <td><a href="javascript:{}" onclick="document.getElementById('addCart_{{ $cartItem->id }}').submit();" style="color: #F8694A">ADD TO CART</a></td>
                                    <form id="addCart_{{ $cartItem->id }}" style="display: none;" method="POST" action="{{ route('cart.create') }}">
                                        {{ csrf_field() }}
                                        <input type="hidden" name="addtocart" value="{{ $cartItem->id }}">
                                        <input type="hidden" name="quantity" value="1">
                                    </form>
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
                            <a href="{{ route('wishlist.destroyAll') }}">clear wish list</a>
                            <a href="#" id="update_cart_submit">Update cart</a>
                        </div>
                        <form id="update_cart" style="display: none;" method="POST" action="{{ route('wishlist.store') }}">
                            {{ csrf_field() }}
                            <input type="hidden" name="submit" value="1">
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- ****** Cart Area End ****** -->

@endsection

@section('appendJs')
    @parent
    <script>
        $(document).ready(function () {
            $('#update_cart_submit').on('click', function (e) {
                e.preventDefault();
                $('#update_cart').submit();
            });
        });
    </script>
    @endsection