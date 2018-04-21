<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('get-file', 'CloudController@getFile');
Route::post('upload-file', ['as'=>'upload-file','uses'=>'CloudController@uploadFile']);
Route::apiResource('/news', 'NewsController');
Route::apiResource('/tags', 'TagController');
Route::apiResource('/category', 'CategoryController');
Route::apiResource('/music', 'MusicController');
Route::apiResource('/videos', 'VideosController');
Route::apiResource('/comment', 'CommentController');
Route::apiResource('/like', 'LikeController');
Route::apiResource('/celebrity', 'CelebrityController');
Route::apiResource('/event', 'EventController');
Route::apiResource('/share', 'ShareController');

//Route::apiResource('/news', 'NewsController');

Route::group(['prefix' => 'news'], function() {

	Route::apiResource('/{news}/reviews', 'ReviewController');
	    
});