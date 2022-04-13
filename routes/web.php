<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\TagController;


Route::get('/', [ArticleController::class, 'index'])->name('home');
Route::get('/articles/{id}', [ArticleController::class, 'show'])->name('articles.show');

Route::get('/tag/{id}', [TagController::class, 'show'])->name('tag.show');

Route::group(['middleware' => 'auth'], function () {
    Route::get('/articles', [ArticleController::class, 'create'])->name('articles.create');
    Route::post('/articles', [ArticleController::class, 'store'])->name('articles.store');
    Route::get('/articles/{id}/edit', [ArticleController::class, 'edit'])->name('articles.edit');
    Route::post('/articles/{id}/edit', [ArticleController::class, 'update'])->name('articles.update');
    Route::post('/articles/{id}/delete', [ArticleController::class, 'destroy'])->name('articles.delete');
});


Route::group(['middleware' => 'admin'], function (){
    Route::get('/admin', [MainController::class, 'admin'])->name('admin.index');
    Route::get('/tag', [TagController::class, 'create'])->name('tags.create');
    Route::post('/tag', [TagController::class, 'store'])->name('tag.store');
    Route::get('tag/{id}/destroy', [TagController::class, 'destroy'])->name('tag.delete');
});



Route::group(['middleware' => 'guest'], function (){
    Route::get('/register', [UserController::class, 'create'])->name('register.create');
    Route::post('/register', [UserController::class, 'store'])->name('register.store');
    Route::get('/login', [UserController::class, 'loginForm'])->name('login.route');
    Route::post('/login', [UserController::class, 'login'])->name('login');
});

Route::get('/logout', [UserController::class, 'logout'])->name('logout')->middleware('auth');
