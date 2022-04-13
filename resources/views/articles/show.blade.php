@extends('main.layout')

@section('page-title')
    Статья
@endsection

@section('btn_back')
    <a href="/" class="btn btn-primary mb-3">Назад</a>
@endsection

@section('content')
    <h1>{{ $article->title }}</h1>

    @if($article->image != Null)
        <img class="card-img-top mt-3 mb-3" src="/public/Image/{{ $article->image }}" alt="Card image cap">
    @endif

    <div>
        <p>{!! $article->articleText !!}</p>
        <p>Дата создания: {{ $article->created_at }}</p>
    </div>

    @unless($article->tags->isEmpty())    {{--проверка есть ли теги--}}
        <h5>Tags</h5>
        @foreach($article->tags as $t)
            <form class="form-group d-inline" action="/tag/{{ $t->id }}" method="get">
                <button type="submit" class="btn btn-primary mt-1" value="{{ $t->id }}">
                    {{$t->name}}
                </button>
            </form>
        @endforeach
    @endunless

    @if(!Auth::guest())
        @if(Auth::user()->id == $article->user_id)
            <hr>

            <div class="row">
                <div class="col-2 mb-3">
                    <a href="/articles/{{$article->id}}/edit" class="btn btn-warning">Редактировать</a>
                </div>
                <div class="col-3">
                    <form action="/articles/{{$article->id}}/delete" method="post">
                        @csrf
                        <button type="submit" class="btn btn-danger">Удалить</button>
                    </form>
                </div>
            </div>
        @endif
    @endif
@endsection
