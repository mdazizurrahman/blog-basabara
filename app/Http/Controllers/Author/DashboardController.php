<?php

namespace App\Http\Controllers\Author;

use Illuminate\Http\Request;
use App\Auth;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        return view('author.dashboard');
    }
}
