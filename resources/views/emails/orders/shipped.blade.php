@component('mail::message')
    # Order Shipped

    Your order has been shipped!

    **Order Email:** {{ $order->email }}

    **Order Name:** {{ $order->first_name }}

    **Order Total:** ${{ round($order->total, 2) }}

    **Items Ordered**

    @foreach ($order->products as $product)
        Name: {{ $product->name }}
        Price: ${{ round($product->pivot->price, 2)}}
        Quantity: {{ $product->pivot->quantity }}
    @endforeach

    {{--@component('mail::button', ['url' => config('app.url'), 'color' => 'green'])--}}
    @auth
        {{--@component('mail::button', ['url' => route('user.order', ['id' => $order->id]), 'color' => 'green'])--}}
        @component('mail::button', ['url' => config('app.url'), 'color' => 'green'])
            View Order
        @endcomponent
    @endauth

    Thanks,
    {{ config('app.name') }}
@endcomponent