--PC - 1:
--SELECT product.maker, laptop.speed 
--FROM laptop INNER JOIN product ON product.model = laptop.model 
--WHERE laptop.hd > 9

--PC - 2:
--SELECT model, price 
--FROM laptop 
--WHERE model IN (SELECT model FROM product WHERE maker = 'B')
--UNION
--SELECT model, price 
--FROM pc 
--WHERE model IN (SELECT model FROM product WHERE maker = 'B')
--UNION
--SELECT model, price 
--FROM printer 
--WHERE model IN (SELECT model FROM product WHERE maker = 'B')

--PC - 3:
--SELECT maker 
--FROM product 
--WHERE type = 'Laptop' AND maker NOT IN (SELECT maker FROM product WHERE type = 'PC')

--PC - 4:
--SELECT hd 
--FROM pc GROUP BY hd HAVING COUNT(hd) > 1

--PC - 5:
--SELECT pc1.model, pc2.model 
--FROM pc AS pc1, pc AS pc2 
--WHERE pc1.hd = pc2.hd AND pc1.speed = pc2.speed AND pc1.code < pc2.code

--PC - 6:
--SELECT DISTINCT maker 
--FROM product 
--WHERE model IN (SELECT model FROM pc WHERE speed > 400 GROUP BY model HAVING COUNT(model) > 1)