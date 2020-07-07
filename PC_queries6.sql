--PC - 1:
--SELECT model, code, screen
--FROM laptop 
--WHERE screen = '15' or screen = '11'

--PC - 2:
--SELECT DISTINCT model
--FROM  (SELECT pc.model,maker,price FROM pc JOIN product ON pc.model = product.model) AS pcs JOIN (SELECT maker, MIN(price) as min_price FROM laptop JOIN product ON laptop.model = product.model GROUP BY maker) AS laps ON laps.maker = pcs.maker 
--WHERE price < min_price

--PC - 3:
