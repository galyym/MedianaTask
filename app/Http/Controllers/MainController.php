<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public function index() {
        $title = "Главная страница";

        return view('main.index')->with('header', $title);
    }

    public function admin(){
        return view('admin.index');
    }
}
