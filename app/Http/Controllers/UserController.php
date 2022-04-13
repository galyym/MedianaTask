<?php

namespace App\Http\Controllers;
use App\Models\Tag;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        //
    }

    public function create()
    {
        return view('user.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|min:2',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed|min:5|',
        ]);

        $user = User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password)
        ]);

        session()->flash('success', 'Регистрация успешна пройдена');
        Auth::login($user);
        return redirect()->home();


    }

    public function loginForm(){
        return view('user.login');
    }

    public function login(Request $request){
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if(Auth::attempt([
            'email'=>$request->email,
            'password'=>$request->password,
        ])) {
            session()->flash('success', 'Вы вошли в систему');
            if (Auth::user()->is_admin){
                $tag = Tag::all();
                return redirect()->route('admin.index')->with('tag', $tag);
            }else{
                return redirect()->home();
            }
        }else{
            return redirect('/login')->with('errors', 'Неверное имя пользователя или пароль');
        }


    }

    public function logout(){
        Auth::logout();
        return redirect()->route('login.route');
    }

}
