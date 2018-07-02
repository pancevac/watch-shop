<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Title  -->
    <title>{{ config('app.name') }} | @yield('title')</title>

    <!-- Favicon  -->
    <link rel="icon" href="{{ asset('img/core-img/favicon.ico') }}">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="{{ asset('css/core-style.css') }}">
    <link rel="stylesheet" href="{{ asset('style.css') }}">

    <!-- Responsive CSS -->
    <link href="{{ asset('css/responsive.css') }}" rel="stylesheet">

    <!-- Custom CSS -->
    @section('appendCss')
        @show

</head>

<body>
@include('inc.side_menu')

<div id="wrapper">

    <!-- ****** Header Area Start ****** -->
    @include('inc.header')
    <!-- ****** Header Area End ****** -->

    <!-- ****** Top Discount Area Start ****** -->
    @include('inc.discount')
    <!-- ****** Top Discount Area End ****** -->

    <!-- <<<<<<<<<<<<<<<<<<<< Breadcrumb Area Start <<<<<<<<<<<<<<<<<<<< -->
    @yield('breadcrumb')
    <!-- <<<<<<<<<<<<<<<<<<<< Breadcrumb Area End <<<<<<<<<<<<<<<<<<<< -->

    {{-- Main content --}}
    @yield('content')


    <!-- ****** Footer Area Start ****** -->
    @include('inc.footer')
    <!-- ****** Footer Area End ****** -->
</div>
<!-- /.wrapper end -->

<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="{{ asset('js/jquery/jquery-2.2.4.min.js') }}"></script>
<!-- Popper js -->
<script src="{{ asset('js/popper.min.js') }}"></script>
<!-- Bootstrap js -->
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
<!-- Plugins js -->
<script src="{{ asset('js/plugins.js') }}"></script>
<!-- Active js -->
<script src="{{ asset('js/active.js') }}"></script>
<!-- Custom js -->
@section('appendJs')
    @show

</body>

</html>