<div class="footer_bottom_area">
    <div class="row">
        <div class="col-12">
            <div class="footer_social_area text-center">
                @foreach($items as $menu_item)
                <a href="{{ $menu_item->link() }}"><i class="{{ $menu_item->title }}" aria-hidden="true"></i></a>
                {{--<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>--}}
                @endforeach
            </div>
        </div>
    </div>
</div>