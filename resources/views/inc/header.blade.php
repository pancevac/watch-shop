<header class="header_area bg-img background-overlay-white" style="background-image: url('storage/{{ setting('site.header_image') }}');">
    <!-- Top Header Area Start -->
    <div class="top_header_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center justify-content-end">

                <div class="col-12 col-lg-7">
                    <div class="top_single_area d-flex align-items-center">
                        <!-- Logo Area -->
                        <div class="top_logo">
                            <a href="{{ route('/') }}"><img src="{{ productImage(setting('site.logo')) }}" alt=""></a>
                        </div>
                        <!-- Cart & Menu Area -->
                        <div class="header-cart-menu d-flex align-items-center ml-auto">
                            <!-- Cart Area -->
                            <div class="cart">

                                @if(Cart::instance('shopping')->count())

                                    <a href="#" id="header-cart-btn" target="_blank"><span class="cart_quantity">{{ Cart::instance('shopping')->count() }}</span> <i class="ti-bag"></i> Your Bag ${{ Cart::instance('shopping')->subtotal() }}</a>
                                    <!-- Cart List Area Start -->

                                    <ul class="cart-list">
                                        @foreach(Cart::instance('shopping')->content() as $cartItem)
                                            <li>
                                                <a href="{{ route('pages.show', [
                                                    'brand' => $cartItem->model->brand->slug,
                                                    'slug' => $cartItem->model->slug
                                                    ]) }}"
                                                   class="image"><img src="{{ productImage($cartItem->model->image) }}" class="cart-thumb" alt=""></a>
                                                <div class="cart-item-desc">
                                                    <h6><a href="{{ route('pages.show', [
                                                    'brand' => $cartItem->model->brand->slug,
                                                    'slug' => $cartItem->model->slug
                                                    ]) }}">{{ $cartItem->name }}</a></h6>
                                                    <p>{{ $cartItem->qty }}x - <span class="price">${{ $cartItem->price }}</span></p>
                                                </div>
                                                <span class="dropdown-product-remove"><i class="icon-cross"></i></span>
                                            </li>
                                        @endforeach
                                            <li class="total">
                                                <span class="pull-right">Total: ${{ Cart::instance('shopping')->subtotal() }}</span>
                                                <a href="{{ route('cart.index') }}" class="btn btn-sm btn-cart">Cart</a>
                                                <a href="{{ route('checkout') }}" class="btn btn-sm btn-checkout">Checkout</a>
                                            </li>
                                    </ul>
                                @else
                                    <a id="header-cart-btn" target="_blank"><span class="cart_quantity">{{ Cart::instance('shopping')->count() }}</span> <i class="ti-bag"></i> Your Bag is empty</a>
                                    @endif
                            </div>
                            <div class="header-right-side-menu ml-15">
                                <a href="#" id="sideMenuBtn"><i class="ti-menu" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Top Header Area End -->
    <div class="main_header_area">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-12 d-md-flex justify-content-between">
                    <!-- Header Social Area -->
                    <div class="header-social-area">
                        {{ menu('header_social', 'components.header_social') }}
                    </div>
                    <!-- Menu Area -->
                    <div class="main-menu-area">
                        {{ menu('nav_main', 'components.nav') }}
                    </div>
                    <!-- Help Line -->
                    <div class="help-line">
                        <a href="tel:{{ setting('site.help_line') }}"><i class="ti-headphone-alt"></i> {{ setting('site.help_line') }}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>