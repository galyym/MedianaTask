@extends('main.layout')

@section('page-title')
    Создать пользователя
@endsection

@section('btn_back')
    <a href="/" class="btn btn-primary mb-3">Назад</a>
@endsection

@section('content')

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul class="list-unstyled">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form class="w-50 mx-auto" action={{ route('register.store') }} method="post">
        @csrf
        <div class="form-group mb-3 mx-auto">
            <h1>Регистрация</h1>
        </div>
        <div class="form-group mb-2">
            <label>Имя пользователя</label>
            <input type="text" class="form-control" name="name" placeholder="Имя пользователя">
        </div>
        <div class="form-group mb-2">
            <label>Email адрес</label>
            <input type="email" class="form-control" name="email" placeholder="Email адрес">
        </div>
        <div class="form-group mb-2">
            <label>Пароль</label>
            <input type="password" class="form-control" name="password" placeholder="Пароль">
        </div>
        <div class="form-group mb-2">
            <label>Повторите пароль</label>
            <input type="password" class="form-control" name="password_confirmation" placeholder="Повторите пороль">
        </div>
        <button type="submit" class="btn btn-primary mt-3">Регистрация</button>
    </form>
@endsection
