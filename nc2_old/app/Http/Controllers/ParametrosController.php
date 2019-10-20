<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ParametrosController extends Controller
{

    public function obtenerValorParametro(Request $obj)
    {
        $valor   = ParametrosController::obtenerValorDeParametro($obj->dominio, $obj->codigo);
        return response()->json([
            "estado" => "success",
            "valor"  => $valor,
        ]);
    }

    public function modificarValorParametro(Request $obj)
    {
        \DB::table('parametros')->where('dominio', $obj->dominio)->where('codigo', $obj->codigo)->update(['valor' => $obj->valor]);
        return response()->json([
            "estado" => "success",
        ]);
    }

    public static function obtenerValorDeParametro($dominio, $codigo)
    {
        $param = \DB::table('parametros')->where('dominio', $dominio)->where('codigo', $codigo)->first();
        return $param->valor;
    }

}
