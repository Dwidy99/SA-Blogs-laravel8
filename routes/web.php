<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Dwi Yulianto",
        "email" => "dwi@gmail.com",
        "image" => "logo.png",
    ]);
});


Route::get('/posts', function () {
    $blogs_post = [
        [
            "title" => "Blog Post Pertama",
            "slug" => "blog-post-pertama",
            "author" => "Dwi",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat debitis amet earum consequuntur perspiciatis, quibusdam minima rerum, aut at reiciendis praesentium. Obcaecati, iste natus. Veniam eaque provident sunt dignissimos repellat quidem minima optio totam quod harum quis aliquid nobis libero error praesentium unde dolorum corporis, ipsa sit nemo? Minus accusantium, error iste mollitia quae laudantium numquam soluta quam ipsa nobis libero vero.",
        ],
        [
            "title" => "Blog Post Kedua",
            "slug" => "blog-post-kedua",
            "author" => "Yulianto",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat debitis amet earum consequuntur perspiciatis, quibusdam minima rerum, aut at reiciendis praesentium. Obcaecati, iste natus. Veniam eaque provident sunt dignissimos repellat quidem minima optio totam quod harum quis aliquid nobis libero error praesentium unde dolorum corporis, ipsa sit nemo? Minus accusantium, error iste mollitia quae laudantium numquam soluta quam ipsa nobis libero vero.",
        ],
    ];
    return view('posts', [
        "title" => "Posts",
        "blogs" => $blogs_post
    ]);
});

// Halaman single post
Route::get('posts/{slug}', function($slug){
    $blogs_post = [
        [
            "title" => "Blog Post Pertama",
            "slug" => "blog-post-pertama",
            "author" => "Dwi",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat debitis amet earum consequuntur perspiciatis, quibusdam minima rerum, aut at reiciendis praesentium. Obcaecati, iste natus. Veniam eaque provident sunt dignissimos repellat quidem minima optio totam quod harum quis aliquid nobis libero error praesentium unde dolorum corporis, ipsa sit nemo? Minus accusantium, error iste mollitia quae laudantium numquam soluta quam ipsa nobis libero vero.",
        ],
        [
            "title" => "Blog Post Kedua",
            "slug" => "blog-post-kedua",
            "author" => "Yulianto",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat debitis amet earum consequuntur perspiciatis, quibusdam minima rerum, aut at reiciendis praesentium. Obcaecati, iste natus. Veniam eaque provident sunt dignissimos repellat quidem minima optio totam quod harum quis aliquid nobis libero error praesentium unde dolorum corporis, ipsa sit nemo? Minus accusantium, error iste mollitia quae laudantium numquam soluta quam ipsa nobis libero vero.",
        ],
    ];

    $new_post = [];
    foreach ($blogs_post as $blog) {
        if ($blog['slug'] == $slug) {
            $new_post = $blog;
        }
    }

    return view('post', [
        'title' => 'Single Post',
        'post' => $new_post
    ]);
});