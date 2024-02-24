<?php
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if (Auth::attempt($credentials)) {
            // Authentication succeeded
            return redirect()->intended('dashboard');
        }

        // Authentication failed
        return back()->withErrors(['email' => 'Login failed.']);
    }
}

