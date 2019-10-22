<?php

namespace App;
use App\User;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function categories()
    {
    	return $this->belongsToMany('App\Category')->withTimestamps();
    }

    public function tags()
    {
    	return $this->belongsToMany('App\Tag')->withTimestamps();
    }

    public function favorate_to_user()
    {
        return $this->belongsToMany('App\User')->withTimestamps();
    }

    public function comments()
    {
        return $this->hasmany('App\Comments');
    }

}
