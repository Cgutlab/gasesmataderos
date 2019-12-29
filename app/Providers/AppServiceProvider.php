<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\datos_empresa;
use App\redes_social;
use App\Logo;
use App\Familia;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \Schema::defaultStringLength(191);

            $direccion= datos_empresa::where('tipo','direccion')->first();
            $tlf= datos_empresa::where('tipo','telefono')->first();
            $wp= datos_empresa::where('tipo','whatsapp')->first();
            $horario= datos_empresa::where('tipo','horario')->first();
            $email= datos_empresa::where('tipo','email')->first();
            // $redes= redes_social::where('ubicacion','header')->orderBy('id','desc')->get();
            $logofoot= Logo::where('tipo','footer')->first();
            $logohead= Logo::where('tipo','header')->first();
            $logootro= Logo::where('tipo','header2')->first();
            $favicon= Logo::where('tipo','favicon')->first();
            view()->share([
                'direccion' => $direccion, 
                'tlf' => $tlf, 
                'email' => $email,
                'wp' => $wp,
                'horario' => $horario,
                'logohead' => $logohead,
                'logootro' => $logootro,
                'favicon' => $favicon,
                'logofoot' => $logofoot
            ]); 
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
