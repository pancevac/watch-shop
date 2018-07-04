<nav class="navbar navbar-expand-lg align-items-start">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#karl-navbar" aria-controls="karl-navbar" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"><i class="ti-menu"></i></span></button>

    <div class="collapse navbar-collapse align-items-start collapse" id="karl-navbar">
        <ul class="navbar-nav animated" id="nav">


            @foreach($items as $parent_item)
                @if($parent_item->children->isEmpty())
                <li class="nav-item"><a class="nav-link" href="{{ url($parent_item->link()) }}">{{ $parent_item->title }}</a></li>

                @else
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="karlDropdown{{ $loop->iteration }}" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ $parent_item->title }}</a>
                    <div class="dropdown-menu" aria-labelledby="karlDropdown{{ $loop->iteration }}">

                @foreach($parent_item->children as $child)

                            <a class="dropdown-item" href="{{ url($child->link()) }}">{{ $child->title }}</a>

                @endforeach
                    </div>
                </li>
                @endif
            @endforeach

            {{--<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="karlDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                <div class="dropdown-menu" aria-labelledby="karlDropdown">
                    <a class="dropdown-item" href="index.html">Home</a>
                    <a class="dropdown-item" href="shop.html">Shop</a>
                    <a class="dropdown-item" href="product-details.html">Product Details</a>
                    <a class="dropdown-item" href="cart.html">Cart</a>
                    <a class="dropdown-item" href="checkout.html">Checkout</a>
                </div>
            </li>
            <li class="nav-item"><a class="nav-link" href="#">Dresses</a></li>
            <li class="nav-item"><a class="nav-link" href="#"><span class="karl-level">hot</span> Shoes</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>--}}
            @guest
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                </li>
            @else
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ Auth::user()->name }}</a>
                    <div class="dropdown-menu" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Account</a>
                        <a class="dropdown-item" href="{{ route('wishlist.index') }}">Wishlist</a>
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}</a>
                    </div>
                </li>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            @endguest
        </ul>
    </div>
</nav>