<?php

use Illuminate\Database\Seeder;

class ServicesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Service::create([
            'type_name' => 'Zamena baterija',
        ]);
        \App\Service::create([
            'type_name' => 'Zamena kaiseva i metalnih narukvica',
        ]);
        \App\Service::create([
            'type_name' => 'Zamena i poliranje stakla',
        ]);
        \App\Service::create([
            'type_name' => 'Popravka mehanizma',
        ]);
        \App\Service::create([
            'type_name' => 'Popravke na kucistu',
        ]);
        \App\Service::create([
            'type_name' => 'Popravke brojcanika i kazaljki',
        ]);
        \App\Service::create([
            'type_name' => 'Dihtovanje sata',
        ]);
        \App\Service::create([
            'type_name' => 'Poliranje sata',
        ]);
        \App\Service::create([
            'type_name' => 'Hromiranje satova',
        ]);
        \App\Service::create([
            'type_name' => 'Izrada koznih narukvica',
        ]);
        \App\Service::create([
            'type_name' => 'Pozlata satova',
        ]);
    }
}
