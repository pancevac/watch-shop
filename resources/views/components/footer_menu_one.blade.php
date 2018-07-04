<div class="col-12 col-sm-6 col-md-3 col-lg-2">
    <div class="single_footer_area">
        <ul class="footer_widget_menu">
            @foreach($items as $item)

                <li><a href="{{ $item->link() }}">{{ $item->title }}</a></li>
            @endforeach
        </ul>
    </div>
</div>