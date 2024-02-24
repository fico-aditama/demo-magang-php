<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User; // Impor model User
use App\Models\Post; // Impor model Post
use Illuminate\Support\Facades\Validator;

class AdminController extends Controller
{
    public function showUsers()
    {
        $users = User::all(); // Fetch users from the database or use appropriate logic
        return view('admin.users', ['users' => $users]);
    }
    public function showPosts()
    {
        // $posts = Post::paginate(10); // Paginate the results
        $posts = Post::all();
        return view('admin.posts', ['posts' => $posts]);
    }
    public function searchUsers(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'keyword' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $keyword = $request->input('keyword');

        $users = User::where('name', 'LIKE', "%$keyword%")->paginate(10);

        return view('admin.search', ['users' => $users, 'keyword' => $keyword]);
    }
    // LoginController
        public function index()
    {
        // Menampilkan halaman admin panel
        return view('admin.dashboard');

        // // You can redirect to another route or page
        // return redirect()->route('admin.users');

        // // Or you can return a response message
        // return "Welcome to the admin panel!";

    }

    public function userList()
    {
        // Mengambil daftar pengguna
        $users = User::all();
        return view('admin.userList', ['users' => $users]);
    }

    public function postList()
    {
        // Mengambil daftar postingan
        $posts = Post::all();
        return view('admin.postList', ['posts' => $posts]);
    }

    
}
