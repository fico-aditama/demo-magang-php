<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin/users', [AdminController::class, 'showUsers'])->name('admin.users'); // Tampilkan daftar pengguna
Route::get('/admin/posts', [AdminController::class, 'showPosts'])->name('admin.posts'); // Tampilkan daftar postingan
Route::get('/admin/users/search', [AdminController::class, 'searchUsers'])->name('admin.users.search');
Route::get('/admin/dashboard', [AdminController::class, 'index'])->name('admin.dashboard');
Route::get('/admin/user-list', [AdminController::class, 'userList'])->name('admin.userList');
Route::get('/admin/post-list', [AdminController::class, 'postList'])->name('admin.postList');
