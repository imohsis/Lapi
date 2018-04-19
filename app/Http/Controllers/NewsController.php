<?php

namespace App\Http\Controllers;

use Symfony\Component\HttpFoundation\Response;

use App\Http\Requests\NewsRequest;
use App\Http\Resources\News\NewsResource;
use App\Http\Resources\News\NewsCollection;

use App\Model\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{

  public function __construct()
   {
     
     $this->middleware('auth:api')->except('index','show');

   }


   


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return NewsCollection::collection(News::all());
        return NewsCollection::collection(News::paginate(20));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(NewsRequest $request)
    {
          $news = new News;
          $news->title = $request->title;
          $news->subtitle = $request->subtitle;
          $news->slug = str_slug($request->title, '-');
          $news->body = $request->content;
          $news->main_image = $request->main_image;
          $news->images = $request->images;
          $news->body = $request->content;
          $news->tags = $request->tags;
          $news->categories = $request->categories;

          $news->like = $request->like;
          $news->dislike = $request->dislike;
          $news->created_at = $request->created_at;
          $news->updated_at = $request->updated_at;
          // work on this tomorrow morning
         // $news->tags()->sync($request->tags);
        //  $news->categories()->sync($request->categories);
          $news->save();

          return response([
                
           'data' => new NewsResource($news)     

          ],Response::HTTP_CREATED);

       // return $request->all();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {
        return new NewsResource($news);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\News  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(News $news)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\News  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, News $news)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news)
    {
        //
    }
}
