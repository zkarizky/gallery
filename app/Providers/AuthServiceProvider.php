<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\Photo;
use App\Policies\PhotoPolicy;

class AuthServiceProvider extends ServiceProvider
{
    protected $policies = [
        Photo::class => PhotoPolicy::class,
    ];

    public function boot()
    {
        $this->registerPolicies();
    }
}
