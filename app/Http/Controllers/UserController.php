<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function create()
    {
        return view('users.register');
    }

    public function store(Request $request)
    {
        //dd($request->password == $request->password2);
        if ($request->password == $request->password_confirmation) {
            $user_old = $request->all();
            $password = bcrypt($request->password);
            $user_old['password'] = $password;
            // $request->merge([
            //     $request->password => $password
            // ]);
            //$request->password = bcrypt($request->password);
            // $formField = [
            //     $name = $request->name,
            //     $email = $request->email,
            //     $password = $request->password
            // ];
            //dd($user);
            $user = User::create($user_old);

            auth()->login($user);

            return redirect('/')->with('success-message', 'User created successfully!');
        } else {
            return back()->with('success-message', 'Password didn\'t match, please try again.');
        }
    }

    public function logout(Request $request)
    {
        auth()->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/')->with('success-message', 'Logged out successfully.');
    }

    public function login()
    {
        return view('users.login');
    }

    public function authenticate(Request $request)
    {
        $request->request->remove('_token');
        //dd($request->all());
        if (auth()->attempt($request->all())) {
            $request->session()->regenerate();

            return redirect('/')->with('success-message', 'Logged in successfully.');
        } else {
            return back()->withErrors(['email' => 'Invalid email'])->onlyInput('email');
        }
    }
}
