@extends('layout.app')

@section('title', 'Shop')

@section('content')

    <!-- ****** Quick View Modal Area Start ****** -->
    @include('components.quick-view-modal')
    <!-- ****** Quick View Modal Area End ****** -->

    <section class="shop_grid_area section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="shop_sidebar_area">

                        <div class="widget catagory mb-50">
                            <!--  Side Nav  -->
                            <div class="nav-side-menu">
                                <h6 class="mb-0">Brands</h6>
                                <div class="menu-list">
                                    <ul id="menu-content2" class="menu-content collapse out">
                                        <!-- Single Item -->
                                        @foreach($brands as $brand)

                                            <li><a href="{{ route('shop.brand', ['slug' => $brand->slug]) }}">{{ $brand->name }}</a></li>

                                        @endforeach
                                        {{--<li data-toggle="collapse" data-target="#women2">
                                            <a href="#">Woman wear</a>
                                            <ul class="sub-menu collapse show" id="women2">
                                                <li><a href="#">Midi Dresses</a></li>
                                                <li><a href="#">Maxi Dresses</a></li>
                                                <li><a href="#">Prom Dresses</a></li>
                                                <li><a href="#">Little Black Dresses</a></li>
                                                <li><a href="#">Mini Dresses</a></li>
                                            </ul>
                                        </li>
                                        <!-- Single Item -->
                                        <li data-toggle="collapse" data-target="#man2" class="collapsed">
                                            <a href="#">Man Wear</a>
                                            <ul class="sub-menu collapse" id="man2">
                                                <li><a href="#">Man Dresses</a></li>
                                                <li><a href="#">Man Black Dresses</a></li>
                                                <li><a href="#">Man Mini Dresses</a></li>
                                            </ul>
                                        </li>
                                        <!-- Single Item -->
                                        <li data-toggle="collapse" data-target="#kids2" class="collapsed">
                                            <a href="#">Children</a>
                                            <ul class="sub-menu collapse" id="kids2">
                                                <li><a href="#">Children Dresses</a></li>
                                                <li><a href="#">Mini Dresses</a></li>
                                            </ul>
                                        </li>
                                        <!-- Single Item -->
                                        <li data-toggle="collapse" data-target="#bags2" class="collapsed">
                                            <a href="#">Bags &amp; Purses</a>
                                            <ul class="sub-menu collapse" id="bags2">
                                                <li><a href="#">Bags</a></li>
                                                <li><a href="#">Purses</a></li>
                                            </ul>
                                        </li>
                                        <!-- Single Item -->
                                        <li data-toggle="collapse" data-target="#eyewear2" class="collapsed">
                                            <a href="#">Eyewear</a>
                                            <ul class="sub-menu collapse" id="eyewear2">
                                                <li><a href="#">Eyewear Style 1</a></li>
                                                <li><a href="#">Eyewear Style 2</a></li>
                                                <li><a href="#">Eyewear Style 3</a></li>
                                            </ul>
                                        </li>
                                        <!-- Single Item -->
                                        <li data-toggle="collapse" data-target="#footwear2" class="collapsed">
                                            <a href="#">Footwear</a>
                                            <ul class="sub-menu collapse" id="footwear2">
                                                <li><a href="#">Footwear 1</a></li>
                                                <li><a href="#">Footwear 2</a></li>
                                                <li><a href="#">Footwear 3</a></li>
                                            </ul>
                                        </li>--}}
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="widget price mb-50">
                            <h6 class="widget-title mb-30">Filter by Price</h6>
                            <div class="widget-desc">
                                <div class="slider-range">
                                    {{--<div data-min="{{ $min }}" data-max="{{ $max }}" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="0" data-value-max="1350" data-label-result="Price:">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                        <span id="slider-min" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                        <span id="slider-max" class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                    </div>
                                    <div class="range-price">Price: {{ $min }} - {{ $max }}</div>--}}

                                    <div class="range-price">Min Price:</div>
                                    <input type="text" class="price-field" id="price-min" name="price-min" value="{{ $min }}">
                                    <div class="range-price">Max Price:</div>
                                    <input type="text" class="price-field" id="price-max"  name="orice-max" value="{{ $max }}">
                                </div>
                            </div>
                        </div>

                        <div class="widget color mb-70">
                            <h6 class="widget-title mb-30">Filter by Color</h6>
                            <div class="widget-desc">
                                <ul class="d-flex justify-content-between">
                                    <li class="gray"><a href="#"><span>(3)</span></a></li>
                                    <li class="red"><a href="#"><span>(25)</span></a></li>
                                    <li class="yellow"><a href="#"><span>(112)</span></a></li>
                                    <li class="green"><a href="#"><span>(72)</span></a></li>
                                    <li class="teal"><a href="#"><span>(9)</span></a></li>
                                    <li class="cyan"><a href="#"><span>(29)</span></a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget size mb-50">
                            <h6 class="widget-title mb-30">Filter by Size</h6>
                            <div class="widget-desc">
                                <ul class="d-flex justify-content-between">
                                    <li><a href="#">XS</a></li>
                                    <li><a href="#">S</a></li>
                                    <li><a href="#">M</a></li>
                                    <li><a href="#">L</a></li>
                                    <li><a href="#">XL</a></li>
                                    <li><a href="#">XXL</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget recommended">
                            <h6 class="widget-title mb-30">Recommended</h6>

                            <div class="widget-desc">
                                @foreach($recommended as $product)

                                    <!-- Single Recommended Product -->
                                    <div class="single-recommended-product d-flex mb-30">
                                        <div class="single-recommended-thumb mr-3">
                                            <img src="{{ productImage($product->image) }}" alt="">
                                        </div>
                                        <div class="single-recommended-desc">
                                            <h6>{{ $product->name }}</h6>
                                            <p>$ {{ $product->price }}</p>
                                        </div>
                                    </div>

                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-8 col-lg-9">
                    <div class="shop_grid_product_area">
                        <div class="row">

                            @foreach($products as $product)

                                <!-- Single gallery Item -->
                                    <div class="col-12 col-sm-6 col-lg-4 single_gallery_item wow fadeInUpBig" data-wow-delay="0.2s">
                                        <!-- Product Image -->
                                        <div class="product-img">
                                            <img src="{{ productImage($product->image) }}" alt="">
                                            <div class="product-quicview">
                                                <a href="#" data-toggle="modal" data-id="{{ $product->id }}" data-target="#quickview"><i class="ti-plus"></i></a>
                                            </div>
                                        </div>
                                        <!-- Product Description -->
                                        <div class="product-description">
                                            <h4 class="product-price">${{ $product->price }}</h4>
                                            <p>{{ $product->name }}</p>
                                            <!-- Add to Cart -->
                                            <a href="#" onclick="document.getElementById('addtocart{{ $product->id }}').click()" class="add-to-cart-btn">ADD TO CART</a>
                                            <form action="{{ route('cart.create') }}" method="POST">
                                                @csrf
                                                <input type="hidden" name="quantity" value="1">
                                                <button id="addtocart{{ $product->id }}" type="submit" name="addtocart" value="{{ $product->id }}" style="display: none"></button>
                                            </form>
                                        </div>
                                    </div>

                            @endforeach


                        </div>
                    </div>

                    {{ $products->links('vendor.pagination.custom_pagination') }}

                    {{--<div class="shop_pagination_area wow fadeInUp" data-wow-delay="1.1s">
                        <nav aria-label="Page navigation">
                            <ul class="pagination pagination-sm">
                                <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                <li class="page-item"><a class="page-link" href="#">02</a></li>
                                <li class="page-item"><a class="page-link" href="#">03</a></li>
                            </ul>
                        </nav>
                    </div>--}}

                </div>
            </div>
        </div>
    </section>

    @endsection

@section('appendJs')

    <script>
        $(document).ready(function () {
            $('#quickview').on('show.bs.modal', function (e) {
                // Get button instance that triggered this event
                var button = $(e.relatedTarget);
                // Get product ID from data-id
                var id = button.data('id');
                var baseUrl = '{{ asset('/') }}';
                var imgUrl = '{{ url('/storage') }}/';
                if (id) {
                    $.ajax({
                        method: 'GET',
                        url: '{{ url('product') }}/' + id,
                        success: function (product) {
                            $('#modal-image').attr('src', imgUrl + product.image);
                            $('#modal-title').text(product.name);
                            $('#modal-description').text(product.description);
                            $('#modal-price').text('$'+ product.price);
                            $('#modal-read-more').on('click', function () {
                                var link = baseUrl + product.brand.slug + '/' + product.slug;
                                window.location.href = link;
                            });
                            $('#addtocart').val(product.id);
                            $('#addtowishlist').attr('href', '{{ url('wishlist') }}/'+product.id);
                            $('#compare').attr('href', '{{ url('compare') }}/'+product.id);
                        }
                    });
                }
            });

            $('.price-field').on('change', function () {
                var min = $('#price-min').val();
                var max = $('#price-max').val();

                var path = window.location.pathname;
                document.location.href = path+'?price_min='+min+'&price_max='+max;
            });

        });
    </script>

@endsection