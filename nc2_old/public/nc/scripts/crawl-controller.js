
app.controller('crawlCtrl', ['$scope', 'comun', '$http', function ($scope, comun, $http)
{
    $scope.modulo = 2;
    comun.colocarSubtitulo("Monitor de Rastreo de Noticias");
    var fuentes = {};

    $http.post(comun.urlBackend + "parametros/getValor", {dominio: 'ConfiguracionCrawl', codigo: 'work'}).success(function (res) {
        $scope.procesandoCrawl = (res.valor === 1 || res.valor === '1');
    })

    $http.get(comun.urlBackend + 'crawl/obtieneDatos')
        .success(function (res)
        {
            $scope.numeroArticulos = res.total_articulos;
            $scope.numeroProcesados = res.total_procesados;
            $scope.topFuentes = res.top_fuentes;
            $scope.nuevos = 0;
            $scope.nuevosProcesados = 0;
        });
    $scope.articulos = {};

    $scope.iniciar = function(){
        console.log("iniciando ccc");
        $scope.iniciarDetenerCrawl(1);
        angular.element("#btn_iniciar").toggleClass('bg-dark-light');
        $http.get(comun.urlBackend + "crawl/crawlerRun").success(function(res){
            console.log("terminadooooo");
            console.log(res);
        })
    }

    $scope.parar = function(){
        $scope.iniciarDetenerCrawl(0);
        angular.element("#btn_iniciar").toggleClass('bg-dark-light');
    }


    $scope.empezarCrawl = function ()
    {
        var rastreoCont = 0;
        $scope.iniciarDetenerCrawl(1);

        if (rastreoCont === 0)
        {
            $http.get(comun.urlBackend + 'crawl/validosCrawl').success(function (respuesta)
            {
                fuentes = respuesta.fuentes;
                procesosCrawl();
                rastreoCont++;
            });
        }

        $http.post(comun.urlBackend + "parametros/getValor", {dominio: 'ConfiguracionCrawl', codigo: 'time_m'}).success(function (res)
        {
            intervalo_minutos_bd = res.valor * 60 * 1000;
            $scope.intervaloCrawl = setInterval(function ()
            {
                intervalo_minutos_bd = res.valor * 60 * 1000;
                console.log('MINUTOS ' + res.valor);
                $http.get(comun.urlBackend + 'crawl/validosCrawl').success(function (respuesta)
                {
                    fuentes = respuesta.fuentes;
                    procesosCrawl();
                    rastreoCont++
                });
            }, intervalo_minutos_bd);
        })
    };
    function procesosCrawl()
    {
        $i = 0;
        $nodosProc = -999;
        $ejecutar = true;
        $ingresoNodosFuente = false;
        $scope.intervaloFuente = setInterval(function ()
        {
            if ($i < fuentes.length && $ejecutar)
            {
                cantNodosFuente = 0;
                $ejecutar = false;
                fuente = fuentes[$i];
                $http.get(comun.urlBackend + "crawl/fuente/" + fuente.id).success(function (respuesta)
                {
                    angular.element("#contenedorItems").slideUp('slow');
                    setTimeout(function () {
                        $nodosProc = 0;
                        cantNodosFuente = respuesta.nodos_items.length;
                        fuenteResp = respuesta.fuente;
                        nodosResp = respuesta.nodos_items;
                        //                            angular.element("#contenedorItems").html('');
                        html = "<div class='row  bg-dark-light item-fuente'><h5><b>" + fuenteResp.fuente_nombre + " - " + fuenteResp.fuente_seccion
                            + "</b> .- Articulos nuevos: " + respuesta.articulos_encontrados
                            + "</h5></div>";
                        for (j = 0; j < nodosResp.length; j++)
                        {
                            item = nodosResp[j];
                            html = html + "<div class='row item-nodo '>"
                                + "<div class='col-md-10' id='item-" + item.id + "'>"
                                + "<a href='" + item.link + "'><b><span style='font-size:1.2em'>" + item.titulo + "</span></b></a>"
                                + "<p>" + fuenteResp.fuente_nombre + " - (" + fuenteResp.fuente_seccion + ") - " + item.fecha_pub + "</p>"
                                + "</div><div class='col-md-2 procesado' id='procesado-" + item.id + "'>  <span class='badge bg-grey'><i class='fa fa-refresh fa-spin fa-lg fa-fw'></i><span>en proceso...</span></span> </div>"
                                + "<div class=' col-md-12 '> - " + item.descripcion + "</div></div>";
                        }
                        angular.element("#contenedorItems").html(html).show('slow');
                        $scope.numeroArticulos = $scope.numeroArticulos + respuesta.articulos_encontrados;
                        $scope.nuevos = $scope.nuevos + respuesta.articulos_encontrados;
                        //llena contenidos y normalizados 
                        for (j = 0; j < nodosResp.length; j++)
                        {
                            item = nodosResp[j];
                            $http.get(comun.urlBackend + "crawl/nodoContenido/" + item.id).success(function (resp)
                            {
                                $nodosProc++;
                                if (resp.estado === 'success')
                                {
                                    angular.element("#procesado-" + resp.id).html(" <span class='badge bg-success-dark'><i class='fa fa-check'></i><span> Procesado!</span></span>");
                                    $scope.nuevosProcesados += 1;
                                    $scope.numeroProcesados += 1;
                                }
                            }).error(function () {
                                $nodosProc++;
                            })
                        }
                    }, 500)
                }).error(function () {
                    $nodosProc = cantNodosFuente
                })
            }
            if ($nodosProc === cantNodosFuente)
            {
                $i++;
                $ejecutar = true;
                $nodosProc = -999;
                if ($i === fuentes.length)
                {
                    clearInterval($scope.intervaloFuente);
                }
            }
            console.log("interaccion de fuente");
        }, 1000)
    }

    $scope.iniciarDetenerCrawl = function (op)
    {
        $scope.procesandoCrawl = (op === 1 || op === '1');
        if ($scope.procesandoCrawl === false)
        {
            clearInterval($scope.intervaloCrawl);
            clearInterval($scope.intervaloFuente);
        }
        $http.post(comun.urlBackend + "parametros/putValor", {dominio: 'ConfiguracionCrawl', codigo: 'work', 'valor': op}).success(function (res) {

        });
    }

}])
