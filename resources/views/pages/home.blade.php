@extends('layout.app')

@section('title', 'Home')

@section('content')

    <!-- ****** Welcome Slides Area Start ****** -->
    <section class="welcome_area">
        <div class="welcome_slides owl-carousel">
            <!-- Single Slide Start -->
            @foreach($banners as $banner)

                <div class="single_slide height-800 bg-img background-overlay" style="background-image: url('storage/{{ $banner->image }}');">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="welcome_slide_text">
                                    <h6 data-animation="bounceInDown" data-delay="0" data-duration="500ms">* {{ $banner->small_text }}</h6>
                                    <h2 data-animation="fadeInUp" data-delay="500ms" data-duration="500ms">{{ $banner->title }}</h2>
                                    <a href="{{ bannerLink($banner) }}" class="btn karl-btn" data-animation="fadeInUp" data-delay="1s" data-duration="500ms">{{ $banner->button_text }}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            @endforeach
        </div>
    </section>
    <!-- ****** Welcome Slides Area End ****** -->

    <!-- ****** Top Catagory Area Start ****** -->
    {{--<section class="top_catagory_area d-md-flex clearfix">
        <!-- Single Catagory -->
        <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(img/bg-img/bg-2.jpg);">
            <div class="catagory-content">
                <h6>On Accesories</h6>
                <h2>Sale 30%</h2>
                <a href="#" class="btn karl-btn">SHOP NOW</a>
            </div>
        </div>
        <!-- Single Catagory -->
        <div class="single_catagory_area d-flex align-items-center bg-img" style="background-image: url(img/bg-img/bg-3.jpg);">
            <div class="catagory-content">
                <h6>in Bags excepting the new collection</h6>
                <h2>Designer bags</h2>
                <a href="#" class="btn karl-btn">SHOP NOW</a>
            </div>
        </div>
    </section>--}}
    <!-- ****** Top Catagory Area End ****** -->

    <!-- ****** Quick View Modal Area Start ****** -->
    @include('components.quick-view-modal')
    <!-- ****** Quick View Modal Area End ****** -->

    <!-- ****** New Arrivals Area Start ****** -->
    <section class="new_arrivals_area section_padding_100_0 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_heading text-center">
                        <h2>Featured</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="karl-projects-menu mb-100">
            <div class="text-center portfolio-menu">
                <button class="btn active" data-filter="*">ALL</button>
                <button class="btn" data-filter=".festina">FESTINA</button>
                <button class="btn" data-filter=".fossil">FOSSIL</button>
                <button class="btn" data-filter=".g-shock">G-SHOCK</button>
                <button class="btn" data-filter=".diesel">DIESEL</button>
                <button class="btn" data-filter=".emperio">EMPERIO</button>
            </div>
        </div>

        <div class="container">
            <div class="row karl-new-arrivals">

                <!-- Single gallery Item Start -->
                @foreach($products as $product)
                    <div class="col-12 col-sm-6 col-md-4 single_gallery_item {{ $product->brand->slug }} wow fadeInUpBig" data-wow-delay="0.2s">
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
    </section>
    <!-- ****** New Arrivals Area End ****** -->

    @endsection

@section('appendJs')
    @parent
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
        });
    </script>
    @endsection