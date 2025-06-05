<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class UserController extends Controller
{
    function users(){
        return DB::select('select * from users');
    }

    function getUser(){
        $responce = Http::get('https://jsonplaceholder.typicode.com/users/1');
        return $responce;
    }
}
