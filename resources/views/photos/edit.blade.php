@extends('layouts.app')

@section('content')

<div class="container">
    <a href="{{ route('photos.my') }}" class="btn btn-secondary">kembali</a>
    <h2>Edit Foto</h2>
    <form action="{{ route('photos.update', $photo->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label>Nama</label>
            <input type="text" name="name" class="form-control" value="{{ $photo->name }}" required>
        </div>
        <div class="form-group">
            <label>Deskripsi</label>
            <textarea name="description" class="form-control">{{ $photo->description }}</textarea>
        </div>
        
        <button class="btn btn-primary">Update</button>
    </form>
</div>
@endsection