@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">{{ $title }}</h1>
</div>

<div class="mb-5 col-lg-8">
    <form method="post" action="/dashboard/posts/{{ $post->slug }}" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" id="title" value="{{ old('title', $post->title) }}" autofocus placeholder="Title..">
            @error('title')
                <small class="text-danger">{{ $message }}</small>
            @enderror
        </div>
        <div class="mb-3">
            <label for="slug" class="form-label">Slug</label>
            <input type="text" name="slug" class="form-control @error('slug') is-invalid @enderror" id="slugPost" value="{{ old('slug', $post->slug) }}" placeholder="Slug..">
            @error('slug')
                <small class="text-danger">{{ $message }}</small>
            @enderror
        </div>

        <div class="mb-3">
            <label for="category_id" class="form-label">Category</label>
            <select name="category_id" class="form-select @error('category_id') is-invalid @enderror">
                <option value="">-- Choose Category --</option>
                @foreach ($categories as $category)
                @if (old('category_id', $post->category_id) == $category->id)
                    <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
                    @else
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endif
                @endforeach
            </select>
            @error('category_id')
                <small class="text-danger">{{ $message }}</small>
            @enderror
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Post Image</label>
            <input type="hidden" name="oldImage" value="{{ $post->image }}">
            @if ($post->image)
                <img src="{{ asset('storage/' . $post->image) }}" class="img-preview img-fluid col-lg-5 mb-3 d-block">
            @else
                <img class="img-preview img-fluid col-lg-5 mb-3">
            @endif
            <input class="form-control form-control-sm @error('image') is-invalid @enderror" name="image" onchange="previewImage()" id="image" type="file">
            @error('image')
                <small class="text-danger">{{ $message }}</small>
            @enderror
        </div>

        <div class="mb-3">
            <label for="body" class="form-label">Body</label>
            <p>
            @error('body')
                <small class="text-danger">{{ $message }}</small>
            @enderror
            </p>
            <input id="body" type="hidden" name="body" class="@error('body') is-invalid @enderror"  value="{{ old('body', $post->body) }}">
            <trix-editor input="body"></trix-editor>
        </div>
        <div class="mb-3 d-flex justify-content-between">
            <button class="btn btn-primary" type="submit">Create New Post</button>
            <a href="/dashboard/posts" class="btn btn-secondary"><span data-feather="arrow-left"></span> Back to all my posts</a>
        </div>

    </form>
</div>
@endsection