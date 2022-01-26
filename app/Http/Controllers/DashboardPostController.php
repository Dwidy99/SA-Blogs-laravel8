<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Str;

class DashboardPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.posts.index', [
            'title' => "All Posts",
            'posts' => Post::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.posts.create', [
            "title" => "Create New Post",
            'categories' => Category::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|unique:posts|max:255',
            'slug' => 'required|unique:posts|max:255',
            'category_id' => 'required',
            'body' => 'required',
        ]);

        $validatedData['user_id'] = auth()->user()->id;
        $validatedData['excerpt'] = Str::limit($request->body, 200);

        Post::create($validatedData);
        return redirect('/dashboard/posts')->with('success', 'New post has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('dashboard.posts.show', [
            "title" => "Post Detail",
            "post" => $post
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('dashboard.posts.edit', [
            "title" => "Edit New Post",
            'categories' => Category::all(),
            'post' => $post
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        // CARA 1.
        // $rules = [
        //     'title' => 'required',
        //     'slug' => 'required',
        //     'category_id' => 'required',
        //     'body' => 'required',
        // ];

        // if (!$request->has('title')) {
        //     $validatedData['title'] = 'required|unique:posts|max:255';
        // }
        // if (!$request->has('slug')) {
        //     $validatedData['slug'] = 'required|unique:posts|max:255';
        // }

        // Cara 2.
        if ($request->title == $post->title) {
            $is_title = '';
        } else {
            $is_title = 'unique:posts,title';
        }
        
        if ($request->slug == $post->slug) {
            $is_slug = '';
        } else {
            $is_slug = 'unique:posts,slug';
        }

        $validatedData = $request->validate([
            'title' => 'required|' . $is_title,
            'slug' => 'required|' . $is_slug,
            'category_id' => 'required',
            'body' => 'required',
        ]);

        $validatedData['excerpt'] = Str::limit($request->body, 200);
        // $validatedData = $request->validate($rules);
        Post::where('id', $post->id)
                ->update($validatedData);
        return redirect('/dashboard/posts')->with('success', 'Post has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        Post::destroy($post->id);
        return redirect('/dashboard/posts')->with('success', 'Post has been deleted!');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Post::class, 'slug', $request->title);
        return response()->json(['slug' => $slug]);
    }
}