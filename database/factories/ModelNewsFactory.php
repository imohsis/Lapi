<?php

use Faker\Generator as Faker;

$factory->define(App\Model\News::class, function (Faker $faker) {
    return [
        
        
        'title' => $faker->word,
        'subtitle' => $faker->word,
        'main_image' => $faker->imageUrl($width = 640, $height = 480),
        'body' => $faker->paragraph,
        'images' => $faker->imageUrl($width = 640, $height = 480),
        'categories' => $faker->word,
        'tags' => $faker->word



    ];
});
