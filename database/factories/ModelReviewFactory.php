<?php

use App\Model\News;
use Faker\Generator as Faker;

$factory->define(App\Model\Review::class, function (Faker $faker) {
    return [

       'news_id' => function ()
       {
       	  return News::all()->random();
       },

       'user' => $faker->name,
       'review' => $faker->paragraph,
       'star' => $faker->numberBetween(0,5)



    ];
});
