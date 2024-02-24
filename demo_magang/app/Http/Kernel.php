<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    protected $middlewareGroups = [
        'web' => [
            // Middleware lain yang mungkin Anda gunakan
            \App\Http\Middleware\EncryptCookies::class,
            \Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse::class,
            \Illuminate\Session\Middleware\StartSession::class,
            \Illuminate\Session\Middleware\AuthenticateSession::class,
            \Illuminate\View\Middleware\ShareErrorsFromSession::class,
            \App\Http\Middleware\VerifyCsrfToken::class,
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ],
    
        'api' => [
            'throttle:api',
            \Illuminate\Routing\Middleware\SubstituteBindings::class,
        ],
    ];
    
    protected $middleware = [
        // Middleware global yang akan digunakan di seluruh aplikasi
    ];
    
    protected $routeMiddleware = [
        // Middleware otentikasi untuk melindungi rute yang memerlukan otentikasi
        'auth' => \App\Http\Middleware\Authenticate::class,
    
        // Middleware untuk mengecek peran (role) pengguna
        'role' => \App\Http\Middleware\CheckRole::class,
    
        // Middleware lain yang mungkin Anda gunakan
    ];
    }
