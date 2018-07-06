@extends('layout.app')

@section('title', 'Reserves Service')

@section('content')

    <div class="checkout_details_area">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6">
                    <div class="checkout_details_area mt-50 clearfix">
                        <div class="cart-page-heading">
                            <h5>Reserves service</h5>
                        </div>
                        <form method="POST" action="{{ route('reservation.reserves') }}">
                            @csrf
                            <div class="row">
                                <div class="col-md-8 mb-3">
                                    <label for="service">Type of Service <span>*</span></label>
                                    <select id="service" class="custom-select d-block w-100" name="service">
                                        @foreach($typeOfService as $service)
                                            <option value="{{ $service->id }}">{{ $service->type_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-8 mb-3">
                                    <label for="description">Your comment</label>
                                    <input type="text" id="description" class="form-control" name="description">
                                </div>
                                <div class="col-md-8 mb-3">
                                    <label for="date">Start Date</label>
                                    <input type="text" id="date" class="form-control" name="date">
                                </div>
                                <div class="col-md-8 mb-3 js-time-container" style="display: none;">
                                    <label for="time">Start Time</label>
                                    <input type="text" id="time" class="form-control" name="time">
                                </div>
                                <div class="col-md-8 mb-3">
                                    <button type="submit" class="btn karl-checkout-btn">Reserves</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('appendCss')
    @parent
    <link rel="stylesheet" href="{{ asset('css/jquery-ui-timepicker.css') }}">
    <link rel="stylesheet" href="{{ asset('css/jquery-timepicker.css') }}">
    @endsection
@section('appendJs')
    @parent
    <script src="{{ asset('js/jquery/jquery-2.2.4.min.js') }}"></script>
    <script src="{{ asset('js/jquery-ui.js') }}"></script>
    <script src="{{ asset('js/jquery-timepicker.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            // cache DOM
            let date;
            let time;

            init();

            function init() {
                date = $('#date').datepicker({
                    dateFormat: 'yy-mm-dd',
                });
                time = $('#time');

                date.on('change', function (event) {
                    const datum = $(this).val();
                    console.log(datum)
                    getAvailableTimes(datum);
                });
            }

            function getAvailableTimes(date) {
                $.ajax({
                    method: 'POST',
                    url: '{{ route('reservation.check') }}',
                    data: {
                        _token: '{{ csrf_token() }}',
                        date: date,
                    },
                    success: updateDateTime,
                });
            }

            // event handlers
            function updateDateTime(result) {
                time.timepicker('remove');
                const config = {
                    timeFormat: 'H:i',
                    minTime: '7',
                    maxTime: '17',
                    step: 60,
                };

                if (result.length > 0) {
                    config.disableTimeRanges = result.map(function (value, key) {
                        const start = parseInt(value);
                        const end = start + 1;
                        return [start.toString(), end.toString()];
                    });
                }

                time.timepicker(config);
                $('.js-time-container').css('display', 'block');
            }
        });
    </script>
    @endsection