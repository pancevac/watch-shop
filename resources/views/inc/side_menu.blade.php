<div class="catagories-side-menu">
    <!-- Close Icon -->
    <div id="sideMenuClose">
        <i class="ti-close"></i>
    </div>
    <!--  Side Nav  -->
    <div class="nav-side-menu">
        <div class="menu-list">
            <div class="coupon-code-area col-md-12" style="padding-top: 20px;">
                <form method="GET" action="{{ route('shop.search') }}">
                    <input type="text" id="search" name="search" value="" placeholder="Products" required>
                    <button type="submit">Search</button>
                </form>
            </div>
            <h6>Brands</h6>
            <ul id="menu-content" class="menu-content collapse out">
                @foreach(\App\Brand::orderBy('name', 'ASC')->get() as $brand)
                    <li class="collapsed">
                        <a href="{{ route('shop.brand', ['slug' => $brand->slug]) }}">{{ $brand->name }}</a>
                    </li>
                @endforeach
                {{--<!-- Single Item -->
                <li data-toggle="collapse" data-target="#women" class="collapsed active">
                    <a href="#">Woman wear <span class="arrow"></span></a>
                    <ul class="sub-menu collapse" id="women">
                        <li><a href="#">Midi Dresses</a></li>
                        <li><a href="#">Maxi Dresses</a></li>
                        <li><a href="#">Prom Dresses</a></li>
                        <li><a href="#">Little Black Dresses</a></li>
                        <li><a href="#">Mini Dresses</a></li>
                    </ul>
                </li>
                <!-- Single Item -->
                <li data-toggle="collapse" data-target="#man" class="collapsed">
                    <a href="#">Man Wear <span class="arrow"></span></a>
                    <ul class="sub-menu collapse" id="man">
                        <li><a href="#">Man Dresses</a></li>
                        <li><a href="#">Man Black Dresses</a></li>
                        <li><a href="#">Man Mini Dresses</a></li>
                    </ul>
                </li>
                <!-- Single Item -->
                <li data-toggle="collapse" data-target="#kids" class="collapsed">
                    <a href="#">Children <span class="arrow"></span></a>
                    <ul class="sub-menu collapse" id="kids">
                        <li><a href="#">Children Dresses</a></li>
                        <li><a href="#">Mini Dresses</a></li>
                    </ul>
                </li>
                <!-- Single Item -->
                <li data-toggle="collapse" data-target="#bags" class="collapsed">
                    <a href="#">Bags &amp; Purses <span class="arrow"></span></a>
                    <ul class="sub-menu collapse" id="bags">
                        <li><a href="#">Bags</a></li>
                        <li><a href="#">Purses</a></li>
                    </ul>
                </li>
                <!-- Single Item -->
                <li data-toggle="collapse" data-target="#eyewear" class="collapsed">
                    <a href="#">Eyewear <span class="arrow"></span></a>
                    <ul class="sub-menu collapse" id="eyewear">
                        <li><a href="#">Eyewear Style 1</a></li>
                        <li><a href="#">Eyewear Style 2</a></li>
                        <li><a href="#">Eyewear Style 3</a></li>
                    </ul>
                </li>
                <!-- Single Item -->
                <li data-toggle="collapse" data-target="#footwear" class="collapsed">
                    <a href="#">Footwear <span class="arrow"></span></a>
                    <ul class="sub-menu collapse" id="footwear">
                        <li><a href="#">Footwear 1</a></li>
                        <li><a href="#">Footwear 2</a></li>
                        <li><a href="#">Footwear 3</a></li>
                    </ul>
                </li>--}}
            </ul>
        </div>
    </div>
</div>