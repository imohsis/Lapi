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


Route::apiResource('/news', 'NewsController');
Route::apiResource('/music', 'MusicController');
Route::apiResource('/videos', 'VideosController');
//Route::apiResource('/news', 'NewsController');

Route::group(['prefix' => 'news'], function() {

	Route::apiResource('/{news}/reviews', 'ReviewController');
	    
});