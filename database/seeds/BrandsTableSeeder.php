<?php

use Illuminate\Database\Seeder;

class BrandsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Brand::create([
            'name' => 'Festina',
            'slug' => str_slug('Festina'),
        ]);
        \App\Brand::create([
            'name' => 'Fossil',
            'slug' => str_slug('Fossil'),
        ]);
        \App\Brand::create([
            'name' => 'G-Shock',
            'slug' => str_slug('G-Shock'),
        ]);
        \App\Brand::create([
            'name' => 'Boss',
            'slug' => str_slug('Boss'),
        ]);
        \App\Brand::create([
            'name' => 'Diesel',
            'slug' => str_slug('Diesel'),
        ]);
        \App\Brand::create([
            'name' => 'Guess',
            'slug' => str_slug('Guess'),
        ]);
        \App\Brand::create([
            'name' => 'Emporio',
            'slug' => str_slug('Emporio'),
        ]);
        \App\Brand::create([
            'name' => 'Armani',
            'slug' => str_slug('Armani'),
        ]);
        \App\Brand::create([
            'name' => 'Rolex',
            'slug' => str_slug('Rolex'),
        ]);
    }
}
