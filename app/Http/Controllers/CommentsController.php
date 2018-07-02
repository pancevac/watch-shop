<?php

namespace App\Http\Controllers;

use App\Product;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentsController extends Controller
{
    public function comment(Request $request, $id)
    {
        // Take commented product
        $product = Product::find($id);

        // Take instance of currently logged user
        $user = User::find(Auth::user()->id);

        // Check if user is admin
        //$user->isAdmin = $user->role->name === 'admin' ? true : false;

        // Store comment
        try {

            $user->comment($product, $request->comment, $request->rating ? $request->rating : 1);
            // Success
            return back()->with('success', 'Your review has been successfully accepted!');

        } catch (\Exception $exception) {
            Log::error('Error with storing comment: '.$exception->getMessage());
        }

        return back()->with('error', 'Something went wrong, please try again later!');
    }
}
