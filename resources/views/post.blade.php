@extends('layout.main')

@section('container')
<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <article>
                
                <h1>{{ $post->title }}</h1>
                
                <p>
                    By. <a href="/authors/{{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none mb-3">
                        {{ $post->category->name }}
                    </a>.
                </p>

                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="card-img-top img-fluid mb-5" alt="{{ $post->category->name }}">
                
                {!! $post->body !!}
            </article>
        
            <a href="/posts" class="d-block mt-3">Back to Posts</a>
        </div>
    </div>
</div>
@endsection