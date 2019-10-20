select * from fuentes
select * from nodos
select count(*), n.id_fuente, f.fuente_nombre, f.fuente_seccion  
from nodos n, fuentes f 
where n.id_fuente = f.id group by n.id_fuente, f.fuente_nombre, f.fuente_seccion 

select * from contenidos
select * from normalizados

select * from contenidos c, normalizados n 
where c.id = n.id 

--truncate nodos
--truncate contenidos
--truncate normalizados
select * from stopwords order by palabra

select f.fuente_nombre, count(*) as articulos 
from fuentes f, nodos n
where f.id = n.id_fuente
group by f.fuente_nombre
order by articulos desc
limit 10

select f.id, f.fuente_url, f.fuente_nombre, f.fuente_seccion, f.permite_rastrear, 
       f.activa, f.titulo, f.link, f.descripcion, f.tipo, f.ultima_pub, f.vigente, 
       f.numero_pasadas, f.ultima_pasada, f.lenguaje, f.control_nivelacion, count(*) as nodos 
from fuentes f left join nodos n on f.id = n.id_fuente
group by f.id, f.fuente_url, f.fuente_nombre, f.fuente_seccion, f.permite_rastrear, 
       f.activa, f.titulo, f.link, f.descripcion, f.tipo, f.ultima_pub, f.vigente, 
       f.numero_pasadas, f.ultima_pasada, f.lenguaje, f.control_nivelacion
order by f.fuente_nombre, f.fuente_seccion 



select f.fuente_nombre, n.id, n.link, c.id as cont, c.contenido, nr.id as norm , nr.texto_lema
from fuentes f left join nodos n on f.id = n.id_fuente
left join contenidos c on n.id = c.id
left join normalizados nr on nr.id = n.id
order by f.fuente_nombre

--SHOW data_directory;
--SELECT datid,datname from pg_stat_database;