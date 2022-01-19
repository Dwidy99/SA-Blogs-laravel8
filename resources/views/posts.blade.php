
@extends('layout.main')

@section('container')
    <h2 class="mb-5">{{ $title }}</h2>

    @foreach ($posts as $post)
    <article class="mb-5 border-bottom">
        <h2>
            <a href="/post/{{ $post->slug }}" class="text-decoration-none">{{ $post->title }}</a>
        </h2>
        <p>
            By. <a href="/authors/{{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">
                {{ $post->category->name }}
            </a>.
        </p>
        <p>{{ $post->excerpt }}</p>

        <a href="/post/{{ $post->slug }}" class="text-decoration-none">Read more..</a>
    </article>
    @endforeach
@endsection