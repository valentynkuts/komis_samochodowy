SELECT * FROM Adres;
SELECT * FROM Klient;
SELECT * FROM Sprzedawca;
SELECT * FROM Model;
SELECT * FROM Egzemplarz;
SELECT * FROM Transakcja;

SELECT id_model FROM Model WHERE nazwa LIKE 'BMW%';

SELECT id_egz FROM Egzemplarz WHERE id_model IN (
	SELECT id_model FROM Model WHERE nazwa LIKE 'BMW%');

SELECT imie, nazwisko FROM Klient K JOIN Transakcja T ON K.id_klient = T.id_klient;

SELECT nazwa FROM Model M,Egzemplarz E WHERE M.id_model = E.id_model AND E.kolor ='biały';

SELECT imie, nazwisko FROM Sprzedawca S JOIN Transakcja T ON S.id_sprz = T.id_sprz GROUP BY imie, nazwisko HAVING count(T.id_sprz) > 2;
 
SELECT imie, nazwisko FROM Klient K JOIN Transakcja T ON K.id_klient = T.id_klient GROUP BY imie, nazwisko HAVING count(T.id_sprz) > 2;

SELECT imie,nazwisko, sum(cena) AS sum FROM (
	      (Klient INNER JOIN Transakcja ON Klient.id_klient = Transakcja.id_klient) 
	      INNER JOIN Egzemplarz ON Transakcja.id_egz = Egzemplarz.id_egz) GROUP BY imie,nazwisko;

SELECT imie,nazwisko FROM (
	      (Klient INNER JOIN Transakcja ON Klient.id_klient = Transakcja.id_klient) 
	      INNER JOIN Egzemplarz ON Transakcja.id_egz = Egzemplarz.id_egz) GROUP BY imie,nazwisko HAVING sum(cena)>40000;  

SELECT cena,id_egz FROM Egzemplarz WHERE id_egz IN(SELECT id_egz FROM Transakcja WHERE id_klient = 7);

SELECT cena,id_egz FROM Egzemplarz WHERE id_egz IN(SELECT id_egz FROM Transakcja WHERE id_klient = (SELECT id_klient FROM Klient WHERE nazwisko = 'Szczęsna'));

SELECT imie, nazwisko,telefon FROM Klient WHERE telefon IS NULL;

