<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;  // kalau pakai Request
use App\Models\Photo;         // kalau pakai model Photo
use Illuminate\Support\Facades\Storage;  // buat storage
class PhotoController extends Controller
{
    public function index()
{
    $photos = \App\Models\Photo::with('user')->withCount('likes')->latest()->get();
    return view('photos.index', compact('photos'));
}


    public function update(Request $request, $id)
    {
        $photo = \App\Models\Photo::findOrFail($id);

        // Cek apakah user yang login pemilik foto
        if ($photo->user_id !== auth()->id()) {
            abort(403, 'Unauthorized action.');
        }

        // Validasi input
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'filename' => 'nullable|image|max:2048',  // max 2MB
        ]);

        // Update atribut foto
        $photo->name = $request->name;
        $photo->description = $request->description;

        // Kalau ada file foto baru, proses upload dan hapus file lama
        if ($request->hasFile('filename')) {
            Storage::disk('public')->delete('photos/' . $photo->filename);

            $file = $request->file('filename');
            $filename = time().'_'.$file->getClientOriginalName();
            $file->storeAs('photos', $filename, 'public');

            $photo->filename = $filename;
        }

        $photo->save();

        return redirect()->route('photos.my')->with('success', 'Foto berhasil diperbarui!');
    }
public function myPhotos()
{
    $photos = auth()->user()
                    ->photos()
                    ->withCount('likes') // INI PENTING!
                    ->get();

    return view('photos.my', compact('photos'));
}

public function destroy($id)
{
    $photo = \App\Models\Photo::findOrFail($id);

    // Pastikan cuma pemilik foto yang bisa hapus
    if ($photo->user_id !== auth()->id()) {
        abort(403, 'Unauthorized action.');
    }

    // Hapus file foto dari storage
    \Illuminate\Support\Facades\Storage::disk('public')->delete('photos/' . $photo->filename);

    // Hapus data foto dari database
    $photo->delete();

    return redirect()->route('photos.my')->with('success', 'Foto berhasil dihapus!');
}
public function create()
{
    return view('photos.create');
}
public function store(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'description' => 'nullable|string',
        'filename' => 'required|image|max:2048', // max 2MB
    ]);

    $file = $request->file('filename');
    $filename = time().'_'.$file->getClientOriginalName();

    // Simpan file ke storage/public/photos
    $file->storeAs('photos', $filename, 'public');

    // Simpan data ke database
    $data = [
        'name' => $request->name,
        'description' => $request->description,
        'filename' => $filename,
        'user_id' => auth()->id(),
    ];
    try {
        Photo::create($data);
        return redirect()->route('photos.index')->with('success', 'Foto berhasil di-upload!');
    } catch (\Exception $e) {
        \Log::error('Gagal simpan foto: '.$e->getMessage());
        return back()->withErrors('Gagal menyimpan data foto!');
    }

}
public function edit($id)
{
    $photo = \App\Models\Photo::findOrFail($id);

    // Cek kalau user bukan pemilik foto, kasih error 403
    if ($photo->user_id !== auth()->id()) {
        abort(403, 'Unauthorized');
    }

    return view('photos.edit', compact('photo'));
}
public function like($photoId)
{
    $userId = auth()->id();

    \App\Models\Like::create([
        'photo_id' => $photoId,
        'user_id' => $userId,
    ]);

    return back();
}

}