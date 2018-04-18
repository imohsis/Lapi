<?php

namespace App\Http\Resources\News;

use Illuminate\Http\Resources\Json\JsonResource;

class NewsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return[

       'title' => $this->title,
       'subtitle' => $this->subtitle,
       'main_image' => $this->main_image,
       'content' => $this->body,
       'images' => $this->images,
       'categories' => $this->categories,
       'tags' => $this->tags,
       'likes'=> $this->likes,
       'dislikes'=> $this->dislikes









        // parent::toArray($request)
     ];
    }
}
