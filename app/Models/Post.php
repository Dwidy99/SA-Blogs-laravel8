<?php

namespace App\Models;


class Post 
{
    private static $blog_post = [
        [
            "title" => "Blog Post Pertama",
            "slug" => "blog-post-pertama",
            "author" => "Otong",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat debitis amet earum consequuntur perspiciatis, quibusdam minima rerum, aut at reiciendis praesentium. Obcaecati, iste natus.",
        ],
        [
            "title" => "Blog Post Kedua",
            "slug" => "blog-post-kedua",
            "author" => "Ucup",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat debitis amet earum consequuntur perspiciatis, quibusdam minima rerum, aut at reiciendis praesentium. Obcaecati, iste natus. Veniam eaque provident sunt dignissimos repellat quidem minima optio totam quod harum quis aliquid nobis libero error praesentium unde dolorum corporis, ipsa sit nemo? Minus accusantium, error iste mollitia quae laudantium numquam soluta quam ipsa nobis libero vero.",
        ],
    ];

    public static function all()
    {
        // return self::$blog_post;
        return collect(self::$blog_post);
    }

    public static function find($slug)
    {
        $posts = static::all();

        // $post = [];
        // foreach ($posts as $p) {
        //     if ($p['slug'] == $slug) {
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug', $slug);
    }
}