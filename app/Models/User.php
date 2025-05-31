<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

    // 🔥 Tambahkan ini untuk mengatasi error
    public function photos()
    {
        return $this->hasMany(Photo::class);
    }
    public function likes()
{
    return $this->hasMany(Like::class);
}

}
// 🔥 Tambahkan ini untuk mengatasi error