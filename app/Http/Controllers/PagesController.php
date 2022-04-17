<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    // Aboutを表示
    public function getAbout()
    {
        dd("aaaaa");
        return view('resources\views\about.blade.php');
    }
}
