@extends('main.layout')

@section('page-title')
    Теги
@endsection

@section('btn_back')
    <a href="/" class="btn btn-primary mb-3">Назад</a>
@endsection

@section('content')
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">tags</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">admin</a>
        </li>
    </ul>

    <label name="tags">Теги</label>

    <table class="table">
        <thead>
            <tr>
                <th scope="col">Теги</th>
                <th scope="col">Удалить</th>
            </tr>
        </thead>
        <tbody>
            @foreach($tag as $t)
                <tr>
                    <td>{{ $t->name }}</td>
                    <td>
                        <a href="/tag/{{$t->id}}/destroy" type="button" class="btn btn-danger">Удалить</a>
                    </td>
                </tr>
            @endforeach
            <form class="mx-auto" action="{{ route('tag.store') }}" method="post">
                @csrf
                <td>
                    <input class="form-control w-50" type="text" name="name" placeholder="Название тега">
                </td>
                <td>
                    <button type="submit" class="btn btn-primary">Добавить</button>
                </td>
            </form>
        </tbody>
    </table>
@endsection


