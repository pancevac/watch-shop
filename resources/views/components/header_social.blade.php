@foreach($items as $item)
    <a href="{{ $item->link() }}"><i class="{{ $item->title }}" aria-hidden="true"></i></a>
@endforeach