--MOVIES - 1:
--SELECT name 
--FROM STARSIN INNER JOIN MOVIESTAR ON STARNAME =  NAME
--WHERE GENDER LIKE 'm' and MOVIETITLE LIKE 'The Usual Suspects'

--MOVIES - 2:
--SELECT STARNAME
--FROM STARSIN JOIN MOVIE ON MOVIETITLE = title AND  MOVIEYEAR = YEAR
--WHERE MOVIEYEAR = 1995 and STUDIONAME = 'MGM'

--MOVIES - 3:
--SELECT DISTINCT NAME
--FROM MOVIEEXEC JOIN MOVIE ON PRODUCERC# = CERT#
--WHERE STUDIONAME = 'MGM'

--MOVIES - 4:
--SELECT title
--FROM MOVIE 
--WHERE LENGTH > (SELECT LENGTH FROM MOVIE WHERE TITLE = 'Star Wars')

--MOVIES - 5:
--SELECT NAME
--FROM MOVIEEXEC
--WHERE NETWORTH > (SELECT NETWORTH FROM MOVIEEXEC WHERE NAME = 'Stephen Spielberg')

--MOVIES - 6:
--SELECT TITLE
--FROM MOVIE JOIN MOVIEEXEC ON PRODUCERC# = CERT#
--WHERE NETWORTH > (SELECT NETWORTH FROM MOVIEEXEC WHERE NAME = 'Stephen Spielberg')

