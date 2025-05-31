@extends('layouts.app')

@section('content')
<div class="container bg-dark-theme p-4 rounded">
    <h2 class="text-primary-accent mb-4">Foto Saya</h2>

    <table class="table custom-table table-bordered">
        <thead>
            <tr>
                <th>Foto</th>
                <th>Nama</th>
                <th>Deskripsi</th>
                <th>Likes</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach($photos as $photo)
            <tr>
                <td><img src="{{ asset('storage/photos/' . $photo->filename) }}" width="100"></td>
                <td>{{ $photo->name }}</td>
                <td>{{ $photo->description }}</td>
                <td>{{ $photo->likes_count }}</td>
                <td>
                    <a href="{{ route('photos.edit', $photo->id) }}" class="btn btn-sm btn-edit">Edit</a>
                    <form action="{{ route('photos.destroy', $photo->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-sm btn-hapus">Hapus</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <a href="{{ route('photos.index') }}" class="btn btn-home mt-3">Home</a>
</div>
@endsection
