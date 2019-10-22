<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name ('home');
Route::get('/category/{slug}','PostController@categorybypost')->name('category.posts');
Route:: post('subscriber','SubscriberController@store')->name('subscriber.store');



Auth::routes();

Route::group(['middleware'=>['auth']], function () {
Route::post('favorate/{post}/add','FavorateController@add')->name('post.favorate');
});


// for Admin Route Group
Route::group(['as'=>'admin.','prefix'=>'admin','namespace'=>'Admin','middleware'=>['auth','admin']], function (){
    Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::resource('tag','TagController');
    Route::resource('category','CategoryController');
    Route::resource('post','PostController');
    Route::resource('subscriber','SubscriberController');
    Route::resource('user','UserController');

     Route::put('password-update','UpdatePasswordController@updatePassword')->name('password.update');


    Route::get('pending/post','PostController@pending')->name('post.pending');
    Route::put('/post/{id}/approve','PostController@approvel')->name('post.approvel');

    Route::get('/favorite','FavoriteController@index')->name('favorite.index');

});

// for Author Route Group
Route::group(['as'=>'author.','prefix'=>'author','namespace'=>'Author','middleware'=>['auth','author']], function (){
    Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::resource('post','PostController');

    Route::get('settings','SettingsController@index')->name('settings');
    Route::put('profile-update','SettingsController@UpdateProfile')->name('profile.update');
    Route::put('password-update','SettingsController@passwordUpdate')->name('password.update');
});
