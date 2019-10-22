<?php

namespace App\Http\Controllers\Admin;
use App\Category;
use App\Tag;
use App\Auth;
use App\Post;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
    	$category = Category::all();
    	$tag = Tag::all();
    	$post = Post::all();
    	$user = User::all();
        return view('admin.dashboard', compact('category','tag','post','user'));
    }
}
