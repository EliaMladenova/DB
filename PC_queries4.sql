--PC - 1:
--SELECT product.maker, product.model, product.type
--FROM product LEFT JOIN printer ON printer.model = product.model LEFT JOIN pc ON pc.model = product.model LEFT JOIN laptop ON laptop.model = product.model
--WHERE laptop.code IS NULL AND pc.code IS NULL AND printer.code IS NULL

--PC - 2:
--SELECT product.maker FROM product INNER JOIN laptop ON laptop.model = product.model
--INTERSECT
--SELECT product.maker FROM product INNER JOIN  printer ON printer.model = product.model

--PC - 3:
--SELECT DISTINCT t1.hd
--FROM laptop t1 INNER JOIN laptop t2 ON t1.hd = t2.hd
--WHERE t1.model != t2.model

--PC - 4 - ????????:
--SELECT pc.model 
--FROM pc LEFT JOIN product ON pc.model = product.model 
--WHERE product.maker IS NULL