<?php

namespace App\Model;

use App\Model\News;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    public function news(){

    	return $this->belongsTo(News::class);
    }
}
