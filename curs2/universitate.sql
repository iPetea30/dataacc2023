SELECT CONCAT(nume, ' ',prenume)  full_name, an FROM universitate.student;

SELECT COUNT(id_curs) AS nr_cursuri, an FROM cursuri GROUP BY an HAVING nr_cursuri <=5;

SELECT VERSION(), NOW();

SELECT nume, prenume FROM student;

SELECT titlu_curs FROM cursuri;

SELECT COUNT(id) AS nr, an FROM student GROUP BY an;

SELECT SUM(bursa) AS total, an FROM student WHERE bursa IS NOT NULL GROUP BY an;

UPDATE student SET status = 'bursier' WHERE bursa IS NOT NULL;

SELECT * FROM `cursuri` WHERE an = 2 AND semestru = 2;

SELECT * FROM `student` WHERE prenume LIKE 'ion%'

SELECT * FROM `student` WHERE prenume LIKE 'ion'

SELECT * FROM `student` WHERE DATE_FORMAT(data_nastere, '%m-%d')= '09-21'

SELECT *, bursa*12 FROM `student` WHERE bursa*12 >= 4000

SELECT *, bursa*12 AS bursa_anuala FROM `student` WHERE bursa*12 >= 4000

SELECT * FROM `student` ORDER BY nume ASC --nume ascendent

SELECT * FROM `student` ORDER BY nume DESC -- nume descendent

SELECT * FROM `student` ORDER BY nume ASC, prenume DESC --nume ascendent, prenume descecndent

SELECT * FROM `student` ORDER BY nume ASC, prenume --prenume are prestabilit crescator

SELECT * FROM `student` ORDER BY rand() --random

SELECT * FROM `student` ORDER BY rand() LIMIT 1 --random si 1 singur rezultat

SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 5 --ordoneaza  dupa data nasterii descrescator si pe cei mai mici ultimii 5

SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 5, 5 --ordoneaza  dupa data nasterii descrescator si pe cei mai mici ultimii 5 si afiseaza urmatorii 5

SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 10, 5 --ordoneaza  dupa data nasterii descrescator si pe cei mai mici ultimii 10 si afiseaza urmatorii 5

SELECT c.id_curs, c.titlu_curs, n.valoare FROM `cursuri` AS c NATURAL JOIN note AS n --

SELECT * FROM student CROSS JOIN note --

SELECT * FROM student CROSS JOIN note WHERE prenume='Andrei' --afiseaza notele tuturor Andrei-lor din doua tabele

SELECT * FROM `cursuri` AS c INNER JOIN note AS n ON c.id_curs = n.id_curs --on elimina duplicatele, afiseaza cursurile la care fiecare are cel putin o nota

SELECT * FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof WHERE profesor.id = 6 --

SELECT * FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs WHERE profesor.id = 6 -- listeaza ce note a dat un anumit profesor

SELECT * FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs LEFT JOIN note ON cursuri.id_curs = note.id_curs WHERE profesor.id = 6

SELECT profesor.nume, profesor.prenume, cursuri.titlu_curs, note.valoare FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof INNER JOIN cursuri ON cursuri.id_curs = didactic.id_curs LEFT JOIN note ON cursuri.id_curs = note.id_curs WHERE profesor.id = 6 AND note.valoare IS NOT NULL

SELECT * FROM `profesor` AS p LEFT JOIN didactic AS d ON p.id = d.id_prof --returneaza toti profesorii care au cursuri

UPDATE `didactic` SET id_prof = 11 WHERE id_prof = 10 --profesorul cu id 10 devine 11

SELECT * FROM `profesor` AS p LEFT JOIN didactic AS d ON p.id = d.id_prof WHERE d.id_prof IS NULL --proful cu id 10 nu are curs

SELECT * FROM `note` GROUP BY id_student

SELECT s.nume, s.prenume FROM `note` AS n INNER JOIN student AS s ON n.id_student = s.id GROUP BY n.id_student --afiseaza doar studentii care au note

SELECT s.nume, s.prenume FROM `note` AS n INNER JOIN student AS s ON n.id_student = s.id WHERE s.id = 111



















