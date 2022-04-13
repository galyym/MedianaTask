@extends('main.layout')

@section('page-title')
    Создать статью
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

    <h1>Создание новой статьи</h1>

    <form class="mx-auto" action={{ route('articles.store') }} method="post" enctype="multipart/form-data">
        @csrf
        <div class="form-group mb-2">
            <label>Название статьи</label>
            <input type="text" class="form-control" name="title" placeholder="Название статьи">
        </div>
        <div class="form-group mb-2">                                                                                               {{--Сама статья--}}
            <label>Cтатья</label>
            <textarea name="articleText" id="mytextarea" placeholder="Статья"></textarea>
        </div>
        <div class="form-group mb-2">
            <label>Выберите изображение</label>
            <input type="file" name="image" class="form-control" placeholder="Выберите изображение">
        </div>
        <div class="form-group mt-3">
            <label name="tags">Теги</label>
            <select class="form-select" id="tag_list" name="tags[]" multiple="multiple" aria-label="Default select example">
                @foreach($tag as $t)
                    <option value="{{ $t->id }}">{{ $t->name }}</option>
                @endforeach
            </select>
        </div>

        <button type="submit" class="btn btn-primary mt-3 w-100">Добавить</button>
    </form>
@endsection

@section('script')
    <script type="text/javascript">
        $("#tag_list").select2();
    </script>

    <script>
        tinymce.init({
            selector: '#mytextarea',
            plugins: [
                'a11ychecker','advlist','advcode','advtable','autolink','checklist','export',
                'lists','link','image','charmap','preview','anchor','searchreplace','visualblocks',
                'powerpaste','fullscreen','formatpainter','insertdatetime','media','table','help','wordcount'
            ],
            toolbar: 'undo redo | formatpainter casechange blocks | bold italic backcolor | ' +
                'alignleft aligncenter alignright alignjustify | ' +
                'bullist numlist checklist outdent indent | removeformat | a11ycheck code table help'
        });
    </script>
@endsection
