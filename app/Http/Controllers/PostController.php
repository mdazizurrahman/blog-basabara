<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Tag;


class PostController extends Controller
{
    public function categorybypost($slug)
    {
    	$categories = Category::all();
    	 $category = Category::where('slug',$slug)->first();
    	 return view('category',compact('category','categories','tag','tags'));
    }

}
