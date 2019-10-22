<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function post()
    {
    	return $this->belognsTo('App\Post');
    }

    public function user()
    {
    	return $this->belognsTo('App\User');
    }
}
