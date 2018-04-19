<?php

namespace App\Http\Controllers;

use App\Model\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         return $tags = Tag::all();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function store(Request $request)
    {
          $this->validate($request, [
 

        'name' => 'required',

       

        ]);


    $tag = new Tag;

    $tag->name = $request->name;

   // $tag->slug = $request->slug;

    $tag->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function show(Tag $tag)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function edit(Tag $tag)
    {
        return $tag = Tag::where('id', $id  )->first();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tag $tag)
    {
                  $this->validate($request, [
         

                'name' => 'required',

               // 'slug' => 'required'

                ]);


            $tag = Tag::find($id);

            $tag->name = $request->name;

           // $tag->slug = $request->slug;

            $tag->save();
            }
            /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Tags  $tags
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tag $tag)
    {
         return Tag::where('id', $id)->delete();
    }
}







































// <?php

// namespace App\Http\Controllers\Admin;


// use App\Model\user\Tag;
// use Illuminate\Http\Request;
// use App\Http\Controllers\Controller;

// class TagController extends Controller
// {
//     /**
//      * Display a listing of the resource.
//      *
//      * @return \Illuminate\Http\Response
//      */
//     public function index()
//     {
//         $tags = Tag::all();
//         return view('admin.tag.show', compact('tags'));
//     }

//     /**
//      * Show the form for creating a new resource.
//      *
//      * @return \Illuminate\Http\Response
//      */
//     public function create()
//     {
//          return view('admin/tag/tag');  
//     }

//     /**
//      * Store a newly created resource in storage.
//      *
//      * @param  \Illuminate\Http\Request  $request
//      * @return \Illuminate\Http\Response
//      */
//     public function store(Request $request)
//     {
//         $this->validate($request, [
 

//         'name' => 'required',

//         'slug' => 'required'

//         ]);


//     $tag = new Tag;

//     $tag->name = $request->name;

//     $tag->slug = $request->slug;

//     $tag->save();

//       return redirect(route('tag.index'));
//     }

//     *
//      * Display the specified resource.
//      *
//      * @param  int  $id
//      * @return \Illuminate\Http\Response
     
//     public function show($id)
//     {
//         //
//     }

//     /**
//      * Show the form for editing the specified resource.
//      *
//      * @param  int  $id
//      * @return \Illuminate\Http\Response
//      */
//     public function edit($id)
//     {
//         $tag = Tag::where('id', $id  )->first();
//         return view('admin.post.edit',compact('post'));
//     }

//     /**
//      * Update the specified resource in storage.
//      *
//      * @param  \Illuminate\Http\Request  $request
//      * @param  int  $id
//      * @return \Illuminate\Http\Response
//      */
//     public function update(Request $request, $id)
//     {
//         $this->validate($request, [
 

//         'name' => 'required',

//         'slug' => 'required'

//         ]);


//     $tag = Tag::find($id);

//     $tag->name = $request->name;

//     $tag->slug = $request->slug;

//     $tag->save();
//     }

//     /**
//      * Remove the specified resource from storage.
//      *
//      * @param  int  $id
//      * @return \Illuminate\Http\Response
//      */
//     public function destroy($id)
//     {
//         Tag::where('id', $id)->delete();

//         return redirect()->back();
//     }
// }
