<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public static function getBanner()
    {
        return self::with(['brand', 'product'])
            ->active()
            ->orderBy('order', 'ASC')
            ->orderBy('updated_at', 'DESC')
            ->get();
    }
}
