@extends('layouts.app')

@section('content')
<div class="container">

    @if (!Request::is('/'))
    
@endif

    <a href="{{ route('photos.index') }}" class="btn btn-kembali">kembali</a>
    <h2>Upload Foto</h2>
    <form action="{{ route('photos.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label>Nama</label>
            <input type="text" name="name" class="form-control" required>
        </div>
        <div class="form-group">
            <label>Deskripsi</label>
            <textarea name="description" class="form-control"></textarea>
        </div>
        <div class="form-group">
            <label>File Foto</label>
            <input type="file" name="filename" class="form-control" required>
        </div>
        <button class="btn btn-primary">Upload</button> 
        

    </form>
</div>
@endsection
