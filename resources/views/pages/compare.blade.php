@extends('layout.app')

@section('title', 'Compare')

@section('content')
    <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area Start >>>>>>>>>>>>>>>>>>>>>>>>> -->
    <section class="single_product_details_area section_padding_0_100">
        <div class="container">
            <div class="row">

                <!-- <div class="col-12 col-md-6">
                    <div class="single_product_thumb">
                        <div id="product_details_slider" class="carousel slide" data-ride="carousel">

                            <ol class="carousel-indicators">
                                <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(img/product-img/product-9.jpg);">
                                </li>
                                <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(img/product-img/product-2.jpg);">
                                </li>
                                <li data-target="#product_details_slider" data-slide-to="2" style="background-image: url(img/product-img/product-3.jpg);">
                                </li>
                                <li data-target="#product_details_slider" data-slide-to="3" style="background-image: url(img/product-img/product-4.jpg);">
                                </li>
                            </ol>

                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <a class="gallery_img" href="img/product-img/product-9.jpg">
                                    <img class="d-block w-100" src="img/product-img/product-9.jpg" alt="First slide">
                                </a>
                                </div>
                                <div class="carousel-item">
                                    <a class="gallery_img" href="img/product-img/product-2.jpg">
                                    <img class="d-block w-100" src="img/product-img/product-2.jpg" alt="Second slide">
                                </a>
                                </div>
                                <div class="carousel-item">
                                    <a class="gallery_img" href="img/product-img/product-3.jpg">
                                    <img class="d-block w-100" src="img/product-img/product-3.jpg" alt="Third slide">
                                </a>
                                </div>
                                <div class="carousel-item">
                                    <a class="gallery_img" href="img/product-img/product-4.jpg">
                                    <img class="d-block w-100" src="img/product-img/product-4.jpg" alt="Fourth slide">
                                </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                @foreach($products as $product)
                {{--<div class="col-6 col-md-6">
                    <div class="single_product_thumb">
                        <div id="product_details_slider" class="carousel slide" data-ride="carousel">

                            <ol class="carousel-indicators">
                                <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(img/product-img/product-9.jpg);">
                                </li>
                            </ol>

                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <a class="gallery_img" href="{{ asset($product->image) }}">
                                        <img class="d-block w-100" src="{{ asset($product->image) }}" alt="First slide">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--}}
                <div class="col-12 col-md-6">
                    <div class="col-6 col-md-6">
                        <a class="gallery_img" href="{{ asset($product->image) }}">
                            <img class="d-block w-100" src="{{ asset($product->image) }}" alt="First slide">
                        </a>

                    </div>
                    <div class="single_product_desc">

                        <h4 class="title"><a href="{{ route('pages.show', ['brand' => $product->brand->name, 'slug' => $product->name]) }}">{{ $product->name }}</a></h4>

                        <h4 class="price">$ {{ $product->price }}</h4>

                            <p class="available">Available: <span class="text-muted">
                                @if($product->stock)
                                    In Stock
                                @else
                                    Not In Stock
                                @endif
                            </span></p>

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
                        </form>

                        <div id="{{ $loop->iteration }}accordion" role="tablist">
                            <div class="card">
                                <div class="card-header" role="tab" id="{{ $loop->iteration }}headingOne">
                                    <h6 class="mb-0">
                                        <a data-toggle="collapse" href="#{{ $loop->iteration }}collapseOne" aria-expanded="true" aria-controls="{{ $loop->iteration }}collapseOne">Description</a>
                                    </h6>
                                </div>

                                <div id="{{ $loop->iteration }}collapseOne" class="collapse show" role="tabpanel" aria-labelledby="{{ $loop->iteration }}headingOne" data-parent="#{{ $loop->iteration }}accordion">
                                    <div class="card-body">
                                        <p>{!! $product->description !!}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="{{ $loop->iteration }}headingTwo">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#{{ $loop->iteration }}collapseTwo" aria-expanded="false" aria-controls="{{ $loop->iteration }}collapseTwo">Details</a>
                                    </h6>
                                </div>
                                <div id="{{ $loop->iteration }}collapseTwo" class="collapse" role="tabpanel" aria-labelledby="{{ $loop->iteration }}headingTwo" data-parent="#{{ $loop->iteration }}accordion">
                                    <div class="card-body">
                                        <p>{!! $product->details !!}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="{{ $loop->iteration }}headingThree">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#{{ $loop->iteration }}collapseThree" aria-expanded="false" aria-controls="{{ $loop->iteration }}collapseThree">Reviews &amp; Ratings</a>
                                    </h6>
                                </div>
                                <div id="{{ $loop->iteration }}collapseThree" class="collapse" role="tabpanel" aria-labelledby="{{ $loop->iteration }}headingThree" data-parent="#{{ $loop->iteration }}accordion">
                                    <div class="card-body">

                                        @foreach($product->comments as $comment)

                                            <strong>{{ $comment->commented->name }}</strong>
                                            <p>{{ $comment->comment }}</p>
                                        @endforeach

                                        <hr>

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
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                @endforeach
                {{--<div class="col-12 col-md-6">
                    <div class="single_product_desc">

                        <h4 class="title"><a href="#">Long Yellow Dress</a></h4>

                        <h4 class="price">$ 39.99</h4>

                        <p class="available">Available: <span class="text-muted">In Stock</span></p>

                        <div class="single_product_ratings mb-15">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star-o" aria-hidden="true"></i>
                        </div>

                        <div class="widget size mb-50">
                            <h6 class="widget-title">Size</h6>
                            <div class="widget-desc">
                                <ul>
                                    <li><a href="#">32</a></li>
                                    <li><a href="#">34</a></li>
                                    <li><a href="#">36</a></li>
                                    <li><a href="#">38</a></li>
                                    <li><a href="#">40</a></li>
                                    <li><a href="#">42</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Add to Cart Form -->
                        <form class="cart clearfix mb-50 d-flex" method="post">
                            <div class="quantity">
                                <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                <input type="number" class="qty-text" id="qty" step="1" min="1" max="12" name="quantity" value="1">
                                <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                            </div>
                            <button type="submit" name="addtocart" value="5" class="btn cart-submit d-block">Add to cart</button>
                        </form>

                        <div id="accordion" role="tablist">
                            <div class="card">
                                <div class="card-header" role="tab" id="headingOne">
                                    <h6 class="mb-0">
                                        <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Information</a>
                                    </h6>
                                </div>

                                <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so dales. Phasellus sagittis auctor gravida. Integ er bibendum sodales arcu id te mpus. Ut consectetur lacus.</p>
                                        <p>Approx length 66cm/26" (Based on a UK size 8 sample) Mixed fibres</p>
                                        <p>The Model wears a UK size 8/ EU size 36/ US size 4 and her height is 5'8"</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingTwo">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Cart Details</a>
                                    </h6>
                                </div>
                                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quis in veritatis officia inventore, tempore provident dignissimos nemo, nulla quaerat. Quibusdam non, eos, voluptatem reprehenderit hic nam! Laboriosam, sapiente! Praesentium.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia magnam laborum eaque.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingThree">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">shipping &amp; Returns</a>
                                    </h6>
                                </div>
                                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse quo sint repudiandae suscipit ab soluta delectus voluptate, vero vitae, tempore maxime rerum iste dolorem mollitia perferendis distinctio. Quibusdam laboriosam rerum distinctio. Repudiandae fugit odit, sequi id!</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae qui maxime consequatur laudantium temporibus ad et. A optio inventore deleniti ipsa.</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>--}}
            </div>
        </div>
    </section>
    <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area End >>>>>>>>>>>>>>>>>>>>>>>>> -->

    <!-- ****** Quick View Modal Area Start ****** -->
    @include('components.quick-view-modal')
    <!-- ****** Quick View Modal Area End ****** -->


    @endsection