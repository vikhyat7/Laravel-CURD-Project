<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\StudentController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('users',[UserController::class,'users']);
Route::get('usersdata',[UserController::class,'getUser']);

Route::view('add','add-student');
Route::post('add',[StudentController::class,'add']);
Route::get('list',[StudentController::class,'list']);
Route::get('delete/{id}',[StudentController::class,'delete']);
Route::get('edit/{id}',[StudentController::class,'edit']);
Route::put('edit-student/{id}',[StudentController::class,'editStudent']);
Route::get('search',[StudentController::class,'search']);
Route::post('delete-multi',[StudentController::class,'deleteMultiple']);


// localhost:8000/welcome/en
// localhost:8000/welcome/de
// Route::get('about/{lang}', function ($lang) {
//     App::setLocale($lang);
//     return view('welcome');
// });

