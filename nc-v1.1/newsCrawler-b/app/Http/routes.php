<?php

use App\Http\Models\StopwordsModel as Sw;
use App\Http\Controllers\ConfigController as ConfigController;
use Illuminate\Support\Facades\DB;

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the controller to call when that URI is requested.
  |
 */

Route::get('/', function ()
{
    return view('welcome');
});

Route::get("fuentes", 'FuentesController@index');
Route::get("fuentes/{id}", 'FuentesController@show');
Route::post("fuentes", 'FuentesController@store');
Route::put("fuentes/{id}", 'FuentesController@update');
Route::delete("fuentes/{id}", 'FuentesController@destroy');

Route::get("crawl/validosCrawl", "CrawlController@validosCrawl"); // para obtener los articulos de la fuente de turno,
Route::get("crawl/datos", "CrawlController@obtieneDatos"); // op : {'na':'numeroArticulos', 'ta' 'topArticulos','taf': totalArticulosPorFuente' }
Route::get("crawl/{id}", "CrawlController@crawlFuenteNodos");
Route::get("crawlItem/{id}", "CrawlController@crawlContenidos");

Route::get("configuracion/sw", "ConfigController@listarStopwords");
Route::get("configuracion/sw/{id}", "ConfigController@obtenerStopword");
Route::post("configuracion/sw", "ConfigController@insertarStopword");
Route::put("configuracion/sw/{id}", "ConfigController@actualizarStopword");
Route::delete("configuracion/sw/{id}", "ConfigController@eliminarStopword");

Route::post("parametros/getValor", 'ParametrosController@obtenerValorParametro');
Route::post("parametros/putValor", 'ParametrosController@modificarValorParametro');


Route::get("nodo/contenido/{id}", "NodosContenidosController@obtenerNodoContenidos");

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
// funcion de prueba
Route::get("prueba1", "FuentesController@prueba1");
Route::get("prueba2/{id}", "FuentesController@prueba2");
Route::get("prueba3/{id}", "FuentesController@prueba3");

Route::get("prueba", function()
{
//
//    $frase = 'continuacion, quiroga           advierte choque        nivel, hermano, se,  estan jugando, hermano? , escucha dialogo, dando grado fraternidad antecedente existia comunicacion continua gobierno cooperativistas. choque,';
//    echo $frase . PHP_EOL;
//    echo "<br>";
//    $palabrasStemm = array();
//    foreach (explode(' ', $frase) as $palabra)
//    {
//        echo $palabra . " ";
//        $palabrasStemm[] = App\Libs\Stemm_es::stemm($palabra);
//    }
//    echo "<br>";
//    echo "<br>";
//    $frase2 = implode(' ', $palabrasStemm);
//    echo $frase2;
//    echo "<br><br>otros     ";
//
//    echo App\Libs\Stemm_es::stemm('concentración') . " " . App\Libs\Stemm_es::stemm('concentrado') . " ";
//    echo App\Libs\Stemm_es::stemm('lealtad') . " " . App\Libs\Stemm_es::stemm('concentrando') . " ";
//    echo App\Libs\Stemm_es::stemm('canción') . " " . App\Libs\Stemm_es::stemm('quirogueando') . " ";
//
//
//    echo "<br><br><br><br><br>--------------------------------------------------------------------<br><br><br><br>";
    $settings = array(
                'oauth_access_token' => "52908821-N0JdXNiBthaiOPsfofe98XzfL8zE9INqxObXVaYGQ",
                'oauth_access_token_secret' => "58JZqRvCdcCNpdhLemyYvTBuzsP2OjQnxkLHc6wNw7Ajr",
                'consumer_key' => "BFz5zJeOBSBWuE8wAdjb2WOxd",
                'consumer_secret' => "uYt7qo1HUQaBUjrCF8rDQCw82xe94Fs1FUdUbS12KqdypKsXn0"
    );

    $twitter = new TwitterAPIExchange($settings);

    $url = 'https://api.twitter.com/1.1/statuses/user_timeline.json';
    $getfield = '?screen_name=muyInteresante&count=100';
//    $url = 'https://api.twitter.com/1.1/search/tweets.json'; //statuses/user_timeline.json';
//    $getfield = '?q=eresCurioso&count=100'; //screen_name=eresCurioso&count=100';

    $requestMethod = 'GET';
    $json = $twitter->setGetfield($getfield)
            ->buildOauth($url, $requestMethod)
            ->performRequest();
    return $json;
    return response()->json([
                        "twits" => $json,
                    ], 200);
});
