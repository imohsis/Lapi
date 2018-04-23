<?php

namespace App\Http\Resources\News;




use Illuminate\Http\Resources\Json\JsonResource;

class NewsCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)

    {
      return [


        'title' => $this->title,
       'subtitle' => $this->subtitle,
       'main_image' => $this->main_image,
       'content' => $this->body,
       'images' => $this->images,
       'categories' => $this->categories,
       //'tags' => $this->tags,
      // 'like'=> $this->like,
      // 'dislike'=> $this->dislike,
       'created_at'=> $this->created_at,
       'rating' => $this->reviews->count() > 0 ? round($this->reviews->sum('star')/$this->reviews->count(),2) : 'No Ratings yet',


         'href' => [

                ' link' => route('news.show', $this->id)

                 ]











      ]

    

      ;


          

















        // return parent::toArray($request);
    }
}
