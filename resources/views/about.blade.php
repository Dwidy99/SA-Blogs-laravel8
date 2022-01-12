@extends('layout.main')

@section('container')
    <h1>Halaman {{ $title }}</h1>
    <h3>{{ $name }}</h3>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }}" class="rounded-circle" alt="{{ $name }}" width="200">
@endsection