@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4">Dashboard Galeri</h2>

    @auth
    <div class="mb-3">
        <a href="{{ route('photos.create') }}" class="btn btn-upload-foto">Upload Foto</a>
        <a href="{{ route('photos.my') }}" class="btn btn-foto-saya">Foto Saya</a>
    </div>
    @endauth

    <div class="row">
        @foreach($photos as $photo)
        <div class="col-md-4 mb-4">
            <div class="photo-card">
                <a href="#" data-toggle="modal" data-target="#photoModal{{ $photo->id }}">
                    <img src="{{ asset('storage/photos/' . $photo->filename) }}" class="card-img-top" style="height: 250px; object-fit: cover;">
                </a>
                <div class="photo-card-footer">

                    <h5>{{ $photo->name }}</h5>
                    <p>{{ $photo->likes_count }} likes</p>

                    @auth
                    <form action="/like/{{ $photo->id }}" method="POST">
                        @csrf
                        <button class="btn btn-sm btn-like">Like</button>
                    </form>
                    @endauth
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="photoModal{{ $photo->id }}" tabindex="-1" role="dialog" aria-labelledby="photoModalLabel{{ $photo->id }}" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">{{ $photo->name }}</h5>
                        
                    </div>
                    <div class="modal-body text-center">
                        <img src="{{ asset('storage/photos/' . $photo->filename) }}" class="img-fluid mb-3">
                        <p><strong>Deskripsi:</strong> {{ $photo->description }}</p>
                        <p><strong>Jumlah Like:</strong> {{ $photo->likes_count }}</p>
                        <p><strong>Diposting oleh:</strong> {{ $photo->user->name }}</p>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection
