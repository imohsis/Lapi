<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    

    public function news()
    {
    	return $this->belongsToMany('App\Model\Post', 'news_tags');
    }







}
