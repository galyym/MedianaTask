@extends('main.layout')
@extends('articles.tag')

@section('page-title')
    Главная страница
@endsection

@section('content')
    <h1>Все статьи на сайте</h1>
    @isset($articles)
        @forelse($articles as $ar)
                <div class="card mb-3">
                    <a href="/articles/{{ $ar->id }}">
                        @if($ar->image == Null)
                            <img class="card-img-top" src="/public/Image/default.png" alt="Card image cap">
                        @else
                            <img class="card-img-top" src="/public/Image/{{ $ar->image }}" alt="Card image cap">
                        @endif
                    </a>
                    <div class="card-body">
                        <a class="card-title" href="/articles/{{ $ar->id }}"><h3>{{ $ar->title }}</h3></a>
                        <p class="card-text"><small class="text-muted">{{ $ar->updated_at }}</small></p>
                    </div>
                </div>
        @empty
            <p class="text-center">
                По вашему запросу: <strong>{{ request()->query('search') }} </strong>ничего не найдено
            </p>
        @endforelse
        <div>
            {{ $articles->links('pagination::bootstrap-4') }}
        </div>
    @endisset


@endsection

@section('search')
    <form class="form-inline my-2 my-lg-0 d-flex" action="{{ route('home') }}" method="get">
        <input class="form-control mr-sm-2 mr-2" type="search" name="search" placeholder="Search" aria-label="Search" value="{{ request()->query('search') }}">
        <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
    </form>
@endsection

@section('tag')
    <h5 class="mt-3">Tags</h5>
    @foreach($tag as $t)
        <form class="form-group d-inline" action="/tag/{{ $t->id }}" method="get">
                <button type="submit" class="btn btn-primary mt-1 btn-color" value="{{ $t->id }}">
                    {{$t->name}}
                </button>
        </form>
    @endforeach
@endsection






