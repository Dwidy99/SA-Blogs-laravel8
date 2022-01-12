
@extends('layout.main')

@section('container')
    @foreach ($posts as $blog)
    <article class="mb-3">
        <h2>
            <a href="/posts/{{ $blog['slug'] }}">{{ $blog['title'] }}</a>
        </h2>
        <h5>Author: {{ $blog['author'] }}</h2>
        <p>{{ $blog['body'] }}</p>
    </article>
    @endforeach
@endsection