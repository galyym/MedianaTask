<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tag = Tag::all();
        return view('articles.tag')->with('tag', $tag);
//        return response()->view('articles.tag', ['tag' => 'news']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $tag = Tag::all();
        $article = Article::all();
        if (Auth::user()->is_admin){
            return view('tags.create')->with('tag', $tag)->with('article', $article);
        }else{
            return redirect()->home();
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){
        $tag = Tag::create([
            'name'=>$request->name
        ]);

        return redirect('/tag');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $query = DB::table("article_tag")->select("article_id")->where("tag_id", "=", $id)->get();

        $articleIdes = Arr::pluck($query, 'article_id');

        $articles = DB::table("articles")->whereIn("id", $articleIdes)->orderBy("created_at","desc")->paginate(3);

        $tag = Tag::all();
        return view('articles.index')->with('articles', $articles)->with('tag', $tag);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function edit(Tag $tag)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tag $tag)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('tags')->where('id','=',$id)->delete();

        $tagID = DB::table('article_tag','=',$id);
        if(!isset($tagID)){
            DB::table('article_tag')->where('tag_id','=',$id)->delete();
        }
        return view('admin.index');
    }
}
