<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::post('register', 'Usercontroller@register');
Route::post('login', 'Usercontroller@login');

Route::group(['middleware' => 'auth:api'],  function () {
    Route::post('details', 'Usercontroller@details');
});

Route::get('contactget', 'ContactController@get');
Route::get('contactspecific/{id}', 'ContactController@specific');
Route::post('contactcreate', 'ContactController@create');
Route::put('contactupdate', 'ContactController@update');
Route::get('contactsearch/{name}', 'ContactController@search');
Route::get('contactdelete/{id}', 'ContactController@delete');
