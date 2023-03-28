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
