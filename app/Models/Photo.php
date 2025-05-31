<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\User;
use App\Models\Like;


class Photo extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'name',
        'description',
        'filename',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function likes()
{
    return $this->hasMany(Like::class);
}



public function isLikedBy($user)
{
    return $this->likes()->where('user_id', $user->id)->exists();
}
    public function getPhotoUrlAttribute()
    {
        return asset('storage/photos/' . $this->filename);
    }
}
