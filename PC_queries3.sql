--PC - 1:
--SELECT DISTINCT maker 
--FROM product 
--WHERE model IN (SELECT model from pc WHERE speed > 500)

--PC - 2:
--SELECT code, model, price 
--FROM printer 
--WHERE price >= ALL(SELECT price FROM printer)

----PC - 3:
--SELECT * 
--FROM laptop 
--WHERE speed < ALL(SELECT speed FROM pc)

----PC - 4:
--SELECT model, price 
--FROM laptop 
--WHERE price >= ALL(SELECT price FROM laptop UNION SELECT price FROM pc UNION SELECT price FROM printer)
--UNION
--SELECT model, price 
--FROM pc 
--WHERE price >= ALL(SELECT price FROM laptop UNION SELECT price FROM pc UNION SELECT price FROM printer)
--UNION
--SELECT model, price 
--FROM printer 
--WHERE price >= ALL(SELECT price FROM laptop UNION SELECT price FROM pc UNION SELECT price FROM printer)

----PC - 5:
--SELECT maker 
--FROM product 
--WHERE model IN (SELECT model FROM printer WHERE color = 'y' AND price <= ALL(SELECT price FROM printer WHERE color='y'));

----PC - 6:
--SELECT maker 
--FROM product 
--WHERE model IN (SELECT model FROM (SELECT * FROM pc WHERE ram <= ALL(SELECT ram FROM pc)) pc2 WHERE speed >= ALL(SELECT speed FROM (SELECT * FROM pc WHERE ram <= ALL(SELECT ram FROM pc)) pc3))