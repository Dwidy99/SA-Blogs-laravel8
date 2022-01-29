@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">{{ $title }}</h1>
</div>

<div class="mb-5 col-lg-8">
    <form method="post" action="/dashboard/categories/{{ $category->slug }}">
        @method('put')
        @csrf
        <div class="mb-3">
            <label for="name" class="form-label">Category Name</label>
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name" value="{{ old('name', $category->name) }}" autofocus placeholder="Title..">
            @error('name')
                <small class="text-danger">{{ $message }}</small>
            @enderror
        </div>
        <div class="mb-3">
            <label for="slug" class="form-label">Slug</label>
            <input type="text" name="slug" class="form-control @error('slug') is-invalid @enderror" id="slugCategory" value="{{ old('slug', $category->slug) }}" placeholder="Slug..">
            @error('slug')
                <small class="text-danger">{{ $message }}</small>
            @enderror
        </div>
        <div class="d-flex justify-content-between mb-3">
            <button class="btn btn-primary" type="submit"><span data-feather="save"></span> Save Category</button>
            <a href="/dashboard/categories" class="btn btn-secondary"><span data-feather="skip-back"></span> Back</a>
        </div>

    </form>
</div>
@endsection