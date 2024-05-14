<?php

use App\Http\Controllers\BooksController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StoresController;
use App\Http\Controllers\UsersController;

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// })->name('login');

Route::prefix('/auth')->name('auth.')->group(function () {
    Route::put('register', [UsersController::class, 'create'])->name('register');

    Route::post('login', [UsersController::class, 'authenticate'])->name('login');
});

Route::prefix('/books')->name('books.')->group(function () {
    Route::get('list', [BooksController::class, 'list'])->name('list');

    Route::post('create', [BooksController::class, 'create'])->name('create');

    Route::put('update', [BooksController::class, 'update'])->name('update');

    Route::delete('delete/{id}', [BooksController::class, 'delete'])->name('delete');
});

Route::prefix('/stores')->name('stores.')->group(function () {
    Route::get('list', [StoresController::class, 'list'])->name('list');

    Route::post('create', [StoresController::class, 'create'])->name('create');

    Route::put('update', [StoresController::class, 'update'])->name('update');

    Route::delete('delete/{id}', [StoresController::class, 'delete'])->name('delete');
});
