@extends('layout.app')

@section('title', 'Login')

@section('content')

    <section class="checkout_area section_padding_100">
        <div class="container">
            <div class="row">

                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-page-heading">
                            <h5>Login</h5>
                        </div>

                        <form action="{{ route('login') }}" method="POST" >
                            @csrf
                            <div class="row">
                                <div class="col-12 mb-3 form-group">
                                    <label for="email">Email address</label>
                                    <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>
                                    @if ($errors->has('email'))
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div class="col-12 mb-3 form-group">
                                    <label for="password">Password</label>
                                    <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                    @endif
                                </div>
                                <div class="col-4 mb-3 form-group">
                                    <button type="submit" class="btn karl-checkout-btn">Login</button>
                                </div>
                                <div class="col-4 mb-3 form-group">
                                    <a href="#">Register</a><br>
                                    <a href="#">Forgot password?</a>
                                </div>
                                <div class="col-4 mb-3 form-group">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </section>

@endsection
