<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FormValidationController;
use App\Http\Controllers\CarListController;

Route::get('/', function () {
    return view('main');
});

//Route::get('/add','App\Http\Controllers\FormValidationController@create');
Route::get('/add',[FormValidationController::class, 'getData']);
Route::post('/add',[FormValidationController::class, 'store']);

Route::get('/list',[CarListController::class, 'show']);
Route::post('/list',[CarListController::class, 'store']);



/*Route::get('/list', function () {
    return view('list');
});*/

//Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
