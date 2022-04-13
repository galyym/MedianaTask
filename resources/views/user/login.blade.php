@extends('main.layout')

@section('page-title')
    Войти
@endsection

@section('btn_back')
    <a href="/" class="btn btn-primary">Назад</a>
@endsection

@section('content')
    @if (session()->has('errors'))
        <div class="alert alert-danger mt-3">
                {{session('errors')}}
        </div>
    @endif

    <form class="w-50 mx-auto" action={{ route('login') }} method="post">
        @csrf
        <div class="form-group mb-3 mx-auto">
            <h1>Войти</h1>
        </div>
        <div class="form-group mb-2">
            <label>Email</label>
            <input type="email" class="form-control" name="email" placeholder="Email">
        </div>
        <div class="form-group mb-2">
            <label>Пароль</label>
            <input type="password" class="form-control" name="password" placeholder="Пароль">
        </div>

        <button type="submit" class="btn btn-primary">Войти</button>
    </form>
@endsection
