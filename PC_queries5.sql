--PC - 1:
--SELECT CAST(AVG(speed) AS decimal(38,2)) AvgSpeed 
--FROM pc

--PC - 2:
--SELECT maker, AVG(screen) AS AvgScreen
--FROM laptop JOIN product ON product.model = laptop.model GROUP BY product.maker

--PC - 3:
--SELECT CAST(AVG(speed) AS decimal(38,2)) AvgSpeed
--FROM laptop
--WHERE price > 1000

--PC - 4:
--SELECT CAST(AVG(pc.price) AS decimal(8, 2)) AS AvgPrice 
--FROM pc JOIN product ON pc.model = product.model
--WHERE product.maker = 'A'

--PC - 5:
--SELECT maker, AVG(price) AS AvgPrice 
--FROM (SELECT model, price FROM pc UNION ALL SELECT model, price FROM laptop) t1 JOIN product ON product.model = t1.model
--WHERE maker = 'B' GROUP BY maker

--PC - 6:
--SELECT speed, AVG(price) AS AvgPrice
--FROM pc GROUP BY speed

--PC - 7:
--SELECT maker, COUNT(pc.model) AS number_of_pc
--FROM product JOIN pc ON product.model = pc.model GROUP BY maker HAVING COUNT(pc.model) >= 3

--PC - 8:
--SELECT TOP 1 product.maker, MAX(pc.price) AS price
--FROM product JOIN pc ON pc.model = product.model GROUP BY product.maker ORDER BY price DESC

--PC - 9:
--SELECT speed, AVG(price) AS AvgPrice 
--FROM pc GROUP BY speed HAVING speed > 800

--PC - 10:
--SELECT maker, CAST(AVG(pc.hd) AS decimal(10, 2)) AS AvgHdd 
--FROM pc JOIN product on pc.model = product.model 
--WHERE maker IN (SELECT DISTINCT maker FROM product JOIN printer ON printer.model = product.model) GROUP BY maker