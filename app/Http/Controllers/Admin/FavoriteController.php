<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    public function index()
    {
    	$posts = Auth::user()->favorate_post;
    	return view('admin.favorite',compact('posts'));
    }
}
