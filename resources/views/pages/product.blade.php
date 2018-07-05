@extends('layout.app')

@section('title', $product->name)

@section('content')

    @include('components.breadcrumb')
    <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area Start >>>>>>>>>>>>>>>>>>>>>>>>> -->
    <section class="single_product_details_area section_padding_0_100">
        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="single_product_thumb">
                        <div id="product_details_slider" class="carousel slide" data-ride="carousel">

                            <ol class="carousel-indicators">
                                <li class="active" data-target="#product_details_slider" data-slide-to="0"
                                    style="background-image: url({{ productImage($product->image) }});">
                                </li>
                                @if($product->gallery)
                                    @foreach(json_decode($product->gallery) as $singleImg)
                                        <li data-target="#product_details_slider" data-slide-to="{{ $loop->iteration }}"
                                            style="background-image: url({{ productImage($singleImg) }});">
                                        </li>
                                    @endforeach
                                @endif
                            </ol>

                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <a class="gallery_img" href="{{ productImage($product->image) }}">
                                        <img class="d-block w-100" src="{{ productImage($product->image) }}" alt="First slide">
                                    </a>
                                </div>
                                @if($product->gallery)
                                    @foreach(json_decode($product->gallery) as $singleImg)
                                        <div class="carousel-item">
                                            <a class="gallery_img" href="{{ productImage($singleImg) }}">
                                                <img class="d-block w-100" src="{{ productImage($singleImg) }}" alt="Second slide">
                                            </a>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6">
                    <div class="single_product_desc">

                        <h4 class="title"><a href="{{ route('shop.brand', ['slug' => $product->brand->slug]) }}">{{ ucfirst($product->brand->name) }}</a></h4>

                        <p>{!! $product->name !!}</p>

                        <h4 class="price">$ {{ $product->price }}</h4>

                        <p class="available">Available: <span class="text-muted">
                                @if($product->stock)
                                    In Stock
                                    @else
                                Not In Stock
                                    @endif
                            </span></p>

                        {{--<div class="single_product_ratings mb-15">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                        </div>--}}
                        <div class="single_product_ratings mb-15">
                            @php
                                $averageRate = $product->averageRate();
                            @endphp
                            @for($i = 0; $i < round($averageRate); $i++)

                                <i class="fa fa-star"></i>

                            @endfor
                            @for($i = 0; $i < 5 - round($averageRate); $i++)

                                <i class="fa fa-star-o"></i>

                            @endfor
                        </div>


                        <!-- Add to Cart Form -->
                        <form class="cart clearfix mb-50 d-flex" method="POST" action="{{ route('cart.create') }}">
                            <div class="quantity">
                                {{ csrf_field() }}
                                <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                <input type="number" class="qty-text" id="qty" step="1" min="1" max="12" name="quantity" value="1">
                                <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                            </div>
                            <button type="submit" name="addtocart" value="{{ $product->id }}" class="btn cart-submit d-block">Add to cart</button>
                            <div class="product_body" style="display: inline;">

                                <div class="modal_pro_wishlist wishlist_btn_custom">
                                    <a href="{{ route('wishlist.add', ['id' => $product->id]) }}" id="wishlist_submit"><i class="ti-heart"></i></a>
                                </div>
                            </div>
                            <div class="product_body">

                                <div class="modal_pro_compare" style="float: left">
                                    <a href="{{ route('compare', ['id' => $product->id]) }}" id="compare_submit"><i class="ti-stats-up"></i></a>
                                </div>
                            </div>
                        </form>

                        <div id="accordion" role="tablist">
                            <div class="card">
                                <div class="card-header" role="tab" id="headingOne">
                                    <h6 class="mb-0">
                                        <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Description</a>
                                    </h6>
                                </div>

                                <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>{!! $product->description !!}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingTwo">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Details</a>
                                    </h6>
                                </div>
                                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>{!! $product->details !!}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingThree">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Reviews &amp; Ratings</a>
                                    </h6>
                                </div>
                                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">

                                        @foreach($product->comments as $comment)

                                            <strong>{{ $comment->commented->name }}</strong>
                                            <p>{{ $comment->comment }}</p>
                                            @endforeach

                                        <hr>
                                            @auth
                                        <form method="POST" action="{{ route('comment', ['id' => $product->id]) }}">
                                            <div class="form-group cart">

                                                <label for="comment">Comment field: </label>
                                                <textarea type="text" id="comment" name="comment" class="form-control"></textarea>
                                                {{ csrf_field() }}
                                            </div>
                                            <div class="input-form form-group">

                                                <div class="input-rating">
                                                    <strong class="text-uppercase">Your Rating: </strong>
                                                    <div class="stars">
                                                        <input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
                                                        <input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
                                                        <input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
                                                        <input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
                                                        <input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group cart">
                                                <button type="submit" name="submitComment" value="5" class="btn cart-submit d-block">Submit</button>
                                            </div>
                                        </form>
                                                @endauth
                                        @guest
                                            <h6>Please login in order to leave a comment.</h6>
                                            @endguest
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area End >>>>>>>>>>>>>>>>>>>>>>>>> -->

    <!-- ****** Quick View Modal Area Start ****** -->
    @include('components.quick-view-modal')
    <!-- ****** Quick View Modal Area End ****** -->

    <section class="you_may_like_area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_heading text-center">
                        <h2>related Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="you_make_like_slider owl-carousel">

                        @foreach($relatedProducts as $product)
                            <!-- Single gallery Item -->
                            <div class="single_gallery_item">
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
                                    {{--<h4 class="title"><a href="#">{{ ucfirst($product->brand->name) }}</a></h4>--}}

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
        });
    </script>

    @endsection

@section('appendCss')
    @parent
    <style>
        .stars {
            display: inline-block;
            vertical-align: top;
        }

        .stars input[type="radio"] {
            display: none;
        }

        .stars>label {
            float: right;
            cursor: pointer;
            padding: 0px 3px;
            margin: 0px;
            -webkit-transition: 0.3s all;
            transition: 0.3s all;
        }

        .stars>label:hover, .review-form .input-rating .stars>label:hover~label {
            -webkit-transform: scale(1.5);
            -ms-transform: scale(1.5);
            transform: scale(1.5);
        }

        .stars>label:before {
            content: "\f006";
            font-family: FontAwesome;
            font-style: normal;
            font-weight: normal;
            color: #DADADA;
            font-size: 14px;
            -webkit-transition: 0.3s all;
            transition: 0.3s all;
        }

        .stars>label:hover:before, .review-form .input-rating .stars>label:hover~label:before {
            content: "\f005";
            color: #FFB656;
        }

        .stars>input:checked label:before, .review-form .input-rating .stars>input:checked~label:before {
            content: "\f005";
            color: #FFB656;
        }
    </style>
    @endsection