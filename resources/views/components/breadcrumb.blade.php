<div class="breadcumb_area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <ol class="breadcrumb d-flex align-items-center">
                    <li class="breadcrumb-item"><a href="{{ route('shop.index') }}">Shop</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('shop.brand', ['slug' => $product->brand->slug]) }}">{{ $product->brand->name }}</a></li>
                    <li class="breadcrumb-item active">{{ $product->name }}</li>
                </ol>
                <!-- btn -->
                <a href="{{ route('shop.brand', ['id' => $product->brand->slug]) }}" class="backToHome d-block"><i class="fa fa-angle-double-left"></i> Back to Category</a>
            </div>
        </div>
    </div>
</div>