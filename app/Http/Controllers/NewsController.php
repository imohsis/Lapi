<?php

namespace App\Http\Controllers;

use Symfony\Component\HttpFoundation\Response;
use JD\Cloudder\Facades\Cloudder;
use App\Http\Requests\NewsRequest;
use App\Http\Resources\News\NewsResource;
use App\Http\Resources\News\NewsCollection;

use App\Model\News;
use Illuminate\Http\Request;

class NewsController extends Controller
{


//This should be uncommented when  the front end is done with user authentication
  // public function __construct()
  //  {
     
  //    $this->middleware('auth:api')->except('index','show');

  //  }


   


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return NewsCollection::collection(News::all());
        return NewsCollection::collection(News::orderBy('id', 'DESC')
->paginate(10));
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
          // $news->main_image = $request->main_image;
          // $news->images = $request->images;
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




        if($request->hasfile('main_image'))
        {
       

            $image = $request->file('main_image');      
            $name= time() . '.' . $image->getClientOriginalExtension();
           
             $location =public_path('images/'. $name);


             $image->move(public_path().'/images/', $name);  

            // \Cloudder::upload($request->file('main_image'));
            // $c1=\Cloudder::getResult();             
            // if($c1){
            //      $news->main_image=$c1['url'];
            
         //   }   
           }

           if($request->hasfile('images'))
           {
            


             $image1 = $request->file('n_sub_image1');      
             $name1= time() . '.' . $image1->getClientOriginalExtension();
              
             $location1 =public_path('images1/'. $name1);

             $image1->move(public_path().'/images1/', $name1); 



                // \Cloudder::upload($request->file('images'));
                // $c2=\Cloudder::getResult();             
                // if($c2){
                //      $news->images=$c2['url'];
                   
                }
   














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

      
       $request['body'] = $request->content;

       unset($request['content']);

        $news->update($request->all());


    return response([
                
           'data' => new NewsResource($news)     

          ],Response::HTTP_CREATED);



    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\News  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(News $news)
    {
        $news->delete();
        return response(null,Response::HTTP_NO_CONTENT);
    }
}
