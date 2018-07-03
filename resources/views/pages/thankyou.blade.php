@extends('layout.app')

@section('title', 'Thank You')

@section('content')

    <section class="checkout_area section_padding_100">
        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="thank-you-section">
                            <h1>Thank you for <br> Your Order!</h1>
                            <p>A confirmation email was sent</p>
                            <div class="spacer"></div>
                            <div>
                                <a href="{{ url('/') }}" class="button">Home Page</a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>

    @endsection