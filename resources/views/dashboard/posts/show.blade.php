@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-5">
        <div class="col-lg-8">
            <article>
                
                <h1 class="mb-3">{{ $post->title }}</h1>

                <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to all my posts</a>
                <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
                <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button class="btn btn-danger" onclick="return confirm('Are You sure ?');"><span data-feather="x"></span> Delete</button>
                </form>
                
                <p class="mt-3">
                    By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none mb-3">
                        {{ $post->category->name }}
                    </a>.
                </p>

                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top img-fluid mb-3" alt="{{ $post->category->name }}">
                
                {!! $post->body !!}
            </article>
        
            <a href="/dashboard/posts" class="d-block mt-3">Back to Posts</a>
        </div>
    </div>
</div>
@endsection