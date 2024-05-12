<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BelieveController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('index', [BelieveController::class,'index']);
Route::get('chitiet/{id}', [BelieveController::class,'chitiet']);
Route::get('tintrongloai/{id}', [BelieveController::class,'tintrongloai']);
Route::get('home', [BelieveController::class,'home']);
Route::get('bai3/{id}', [BelieveController::class,'bai3']);
Route::get('bai32/{id}', [BelieveController::class,'bai32']);
Route::get('bai4/{id}', [BelieveController::class,'bai4']);