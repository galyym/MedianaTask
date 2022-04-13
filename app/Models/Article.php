<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    protected $fillable = [
      'title',
      'articleText',
    ];


    /**
     * @return mixed
     */

    public function user(){
        return $this->belongsTo('App\Models\User');
    }

    public function tags(){
        return $this->belongsToMany('App\Models\Tag')->withTimestamps();
    }

    public function getTafAttribute(){
        return $this->tags->lists('id');
    }
}
