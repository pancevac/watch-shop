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
}
