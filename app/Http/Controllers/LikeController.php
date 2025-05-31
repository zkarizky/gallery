<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Photo;
use App\Models\Like;

class LikeController extends Controller
{
    public function myPhotos()
{
    $photos = auth()->user()->photos()->withCount('likes')->get();
    return view('photos.my', compact('photos'));
}

    public function store($photoId)
    {
        if (!auth()->check()) {
            return redirect()->route('login');
        }

        $photo = Photo::findOrFail($photoId);
        $userId = auth()->id();

        // Cek apakah user sudah like (opsional, kalau kamu mau satu kali like saja)
        $alreadyLiked = Like::where('photo_id', $photo->id)
                            ->where('user_id', $userId)
                            ->exists();

        if (!$alreadyLiked) {
            Like::create([
                'photo_id' => $photo->id,
                'user_id' => $userId,
            ]);
        }

        return back();
    }
}
