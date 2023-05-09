SELECT CONCAT(nume, ' ',prenume)  full_name, an FROM universitate.student;

SELECT COUNT(id_curs) AS nr_cursuri, an FROM cursuri GROUP BY an HAVING nr_cursuri <=5;

SELECT VERSION(), NOW();

SELECT nume, prenume FROM student;

SELECT titlu_curs FROM cursuri;

SELECT COUNT(id) AS nr, an FROM student GROUP BY an;

SELECT SUM(bursa) AS total, an FROM student WHERE bursa IS NOT NULL GROUP BY an;

UPDATE student SET status = 'bursier' WHERE bursa IS NOT NULL;