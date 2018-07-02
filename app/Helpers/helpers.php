<?php
/**
 * Created by PhpStorm.
 * User: sile
 * Date: 2.7.18.
 * Time: 19.19
 */
function productImage($path)
{
    return $path && file_exists('storage/'.$path) ? asset('storage/'.$path) : asset('img/not-found.jpg');
}

function calculateDiscountPrice($price, $percent_off)
{
    return $price - (($percent_off / 100) * $price);
}

function newProducts($time)
{
    if ($time->gt(\Carbon\Carbon::now()->subDays(setting('site.timeday')))) {
        return true;
    }
}