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

    public function scopeFeatured($query)
    {
        return $query->where('featured', 1);
    }

    public function scopeStock($query)
    {
        return $query->where('stock', 1);
    }

    public static function getRandom($pagination, $min = null, $max = null)
    {
        $query = self::inRandomOrder();
        if ($min && $max) {
            $query = $query->where('price', '>=', $min)->where('price', '<=', $max);
        }
        return $query->paginate($pagination);
    }

    public static function getBasedOnBrand($slug, $request, $paginate)
    {
        $query = self::whereHas('brand', function ($brand) use ($slug) {
            $brand->whereSlug($slug);
        });
        if ($request->has('price_min') && $request->has('price_max')) {
            $query = $query->where('price', '>=', $request->price_min)->where('price', '<=', $request->price_max);
        }

        return $query->orderBy('updated_at')->paginate($paginate);
    }

    public static function getFeatured($take)
    {
        return self::with('brand')->featured()->stock()->inRandomOrder()->take($take)->get();
    }
}
