<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;

class FavorateController extends Controller
{
    //

    public function add($post)
    {
    	$user = Auth::user();
    	$isfavorate = $user->favorate_post()->where('post_id',$post)->count();

    	if($isfavorate == 0)
    	{
    		$user->favorate_post()->attach($post);
    		Toastr::success('Post successfully added to your favourate list :)','Success');
    		return redirect()->back();
    	}
    	else{
    		$user->favorate_post()->detach($post);
    		Toastr::success('Post successfully remove to your favourate list :)','Success');
    		return redirect()->back();
    	}
    }
}
