<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {

    $name = $faker->word;

    return [
        'name' => $name,
        'slug' => str_slug($name),
        'description' => $faker->sentence,
        'details' => $faker->text,
        'price' => rand(200, 300),
        'image' => '/img/sat.jpg',
        'brand_id' => rand(1, 7),
        'featured' => rand(0, 1),
    ];
});
