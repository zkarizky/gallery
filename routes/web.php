<?php

use App\Http\Controllers\PhotoController;
use App\Http\Controllers\LikeController;

Route::get('/', [PhotoController::class, 'index'])->name('home');
Route::get('/', [PhotoController::class, 'index'])->name('home');

Route::get('/home', [PhotoController::class, 'index'])->name('home');

Route::get('/photo/{photo}', [PhotoController::class, 'show']);
Route::post('/like/{photo}', [LikeController::class, 'store']);

Auth::routes();

Route::middleware('auth')->group(function () {
    Route::resource('photos', PhotoController::class)->except(['index', 'show']);
    Route::get('/my-photos', [PhotoController::class, 'myPhotos'])->name('photos.my');
});Route::delete('/photos/{photo}', [PhotoController::class, 'destroy'])->name('photos.destroy')->middleware('auth');
Route::post('/like/{photo}', [LikeController::class, 'store'])->name('photos.like')->middleware('auth');
Route::get('/photos/create', [PhotoController::class, 'create'])->name('photos.create');
 Route::post('/photos', [PhotoController::class, 'store'])->name('photos.store');
 Route::get('/photos', [PhotoController::class, 'index'])->name('photos.index');
 Route::get('/photos/my', [PhotoController::class, 'myPhotos'])->name('photos.my');
 Route::delete('/photos/{id}', [PhotoController::class, 'destroy'])->name('photos.destroy')->middleware('auth');
Route::post('/like/{photo}', [PhotoController::class, 'like'])->middleware('auth');

