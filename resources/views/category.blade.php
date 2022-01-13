
@extends('layout.main')

@section('container')
<h1 class="mb-5">Post Category : {{ $category->name }}</h1>

    @foreach ($posts as $post)
    <article class="mb-3">
        <h2>
            <a href="/posts/{{ $post->slug }}">{{ $post->title }}</a>
        </h2>
        <p>{{ $post->excerpt }}</p>
    </article>
    @endforeach
@endsection