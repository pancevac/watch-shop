<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Actuallymab\LaravelComment\Commentable;

class Product extends Model
{
    use Commentable;

    protected $canBeRated = true;
    protected $mustBeApproved = false;

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function discount()
    {
        return $this->hasOne(Discount::class);
    }

    public function orders()
    {
        return $this->belongsToMany(Order::class)->withPivot('quantity', 'price', 'percent_off');
    }

    public static function getRandom($pagination)
    {
        return self::inRandomOrder()->paginate($pagination);
    }
}
