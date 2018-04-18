<?php

namespace App\Model;

use App\Model\Review;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
     public function tags()
    {
    	return $this->belongsToMany('App\Model\Tag', 'news_tags')->withTimestamps();
    }


    public function categories()
    {
    	return $this->belongsToMany('App\Model\Category', 'category_news')->withTimestamps();
    }
    







    public function reviews(){

    	return $this->hasMany(Review::class);
    }
}
