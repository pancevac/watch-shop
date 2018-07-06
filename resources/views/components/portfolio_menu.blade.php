<div class="karl-projects-menu mb-100">
    <div class="text-center portfolio-menu">
        @foreach($items as $item)
            @if($item->title == '*')
                <button class="btn active" data-filter="*">ALL</button>
            @else
                <button class="btn" data-filter=".{{ $item->title }}">{{ strtoupper($item->title) }}</button>
            @endif
        @endforeach

    </div>
</div>