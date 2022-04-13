<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ArticleController extends Controller
{
    public function index()
    {
        $tag = Tag::all();
            $search = request()->query('search');

            if($search){
                $articles = Article::where('title', 'LIKE', "%{$search}%")->simplePaginate(3);
            }else{
                $articles = Article::orderBy('created_at', 'desc')->paginate(3);
            }


            return view('articles.index')->with('articles', $articles)->with('tag', $tag);

    }

    public function create()
    {
        $tag = Tag::all();
        return view('articles.create', compact('tag'));
    }

    public function store(Request $request){

        $request->validate([
            'title' => 'required|min:10',
            'articleText' => 'required|min:20',
            'image' => 'nullable|mimes:jpeg,jpg,png,gif|max:10000'
        ]);


        $article = new Article();
        $article->title = $request->input('title');
        $article->articleText = $request->input('articleText');
        $article->user_id = auth()->user()->id;

        if($request->file('image')){
            $file= $request->file('image');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('public/Image'), $filename);
            $article['image']= $filename;
        }

        $article->save();


        $article->tags()->attach($request->input('tags'));

        return redirect()->home();
    }

    public function show($id)
    {
        $article = Article::find($id);
        return view('articles.show')->with('article', $article);
    }

    public function edit($id)
    {
        $tag = Tag::all();

        $article = Article::find($id);
        if(auth()->user()->id != $article->user_id)
            return redirect('/articles')->with('error', 'Вы не авторизованы');

        return view('articles.edit', compact('article', 'tag'));
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'title' => 'required|max:190|min:10',
            'articleText' => 'required|min:20'
        ]);

        $article = Article::find($id);
        $article->title = $request->input('title');
        $article->articleText = $request->input('articleText');

        if($request->file('image')){
            $file= $request->file('image');
            $filename= date('YmdHi').$file->getClientOriginalName();
            $file-> move(public_path('public/Image'), $filename);
            $article['image']= $filename;
        }
        $article->save();

        $article->tags()->sync($request->input('tags'));

        return redirect("/articles/{$id}")->with('success', 'Статья была обновлена');
    }

    public function destroy($id)
    {
        $article = Article::find($id);

        if(auth()->user()->id != $article->user_id)
            return redirect('/articles')->with('error', 'Вы не авторизованы');

        $article->delete();
        return redirect('/')->with('success', 'Статья была удалена');
    }

}
