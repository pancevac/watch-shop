<?php

namespace App\Http\Controllers;

use App\Reservation;
use App\Service;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReservationsController extends Controller
{
    public function showForm()
    {
        $typeOfServices = Service::all();
        return view('pages.reservations')->with('typeOfService', $typeOfServices);
    }

    public function checkDate(Request $request)
    {
        if ($request->has('date')) {
            // Check if user choose that that is in past
            if ($request->date < Carbon::now()) {
                $response = array();
                for ($hours = 7, $i = 0; $hours <= 17; $hours++, $i++) {
                    $response[$i] = "$hours";
                }
                return response()->json($response);
            }

            $reservations = Reservation::where('start_from', 'LIKE', "$request->date%")->get();
            $response = array();
            foreach ($reservations as $key => $reservation) {
                $response[$key] = Carbon::parse($reservation->start_from)->format('H');
            }
            return response()->json($response);
        }
    }

    public function reserves(Request $request)
    {
        // Check if all fields are filled
        if (!$request->has('service') && !$request->has('date') && !$request->has('time')) {
            return back()->with('error', 'You must fill all fields!');
        }
        // Check if user is selected date that was yesterday or far
        $selectedDate = $request->date . ' ' . $request->time;
        if ($selectedDate < Carbon::now()) {
            return back()->with('error', 'You can not reserve service in past!');
        }

        // Fill columns
        $reservation = new Reservation();
        $reservation->user_id = Auth::user()->id;
        $reservation->service_id = $request->service;
        if ($request->has('description')) {
            $reservation->description = $request->description;
        }
        $reservation->start_from = $request->date.' '.$request->time;
        // Save reservation
        if ($reservation->save()) {
            return back()->with('success', 'You are successfully reserves service');
        }
    }
}
