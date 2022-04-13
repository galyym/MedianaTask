@extends('main.layout')

@section('page-title')
    Admin
@endsection

@section('btn_back')
    <a href="/" class="btn btn-primary mb-3">Назад</a>
@endsection

@section('content')
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{ route('tags.create') }}">tags</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">admin</a>
        </li>
    </ul>
@endsection

@section('script')
    <script type="text/javascript">
        $("#tag_list").select2();
    </script>
@endsection
