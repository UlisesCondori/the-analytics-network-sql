-- 1 Mostrar todos los productos dentro de la categoria electro junto con todos los detalles.
select * 
from stg.product_master
where categoria = 'Electro'

-- 2 ¿Cuáles son los productos producidos en China?
select * 
from stg.product_master 
where origen = 'China'

-- 3 Mostrar todos los productos de Electro ordenados por nombre.
select * 
from stg.product_master
where categoria = 'Electro'
ORDER BY NOMBRE

--4 Cuales son las TV que se encuentran activas para la venta?
SELECT * 
FROM STG.PRODUCT_MASTER 
WHERE SUBCATEGORIA = 'TV' 
AND IS_ACTIVE = 'true';

--5 Mostrar todas las tiendas de Argentina ordenadas por fecha de apertura de las mas antigua a la mas nueva.
SELECT * 
FROM STG.STORE_MASTER 
WHERE PAIS = 'Argentina' 
ORDER BY FECHA_APERTURA ASC NULLS FIRST;

--6 Cuales fueron las ultimas 5 ordenes de ventas?
SELECT * 
FROM STG.ORDER_LINE_SALE 
ORDER BY FECHA DESC 
LIMIT 5;

--7 Mostrar los primeros 10 registros del conteo de tráfico por Super store ordenados por fecha.
SELECT * 
FROM STG.SUPER_STORE_COUNT 
ORDER BY  cast(FECHA as date) ASC 
LIMIT 10;

