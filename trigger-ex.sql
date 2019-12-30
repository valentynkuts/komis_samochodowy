----------1-delete Adres after delete Klient---
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('T','81-838','SopotTEST','Malczewsk','103 m.8');  
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pani','GrażyTEST','WiśniewskaTEST',NULL,'T');


 DELETE FROM Klient WHERE id_klient = (SELECT id_klient FROM Klient WHERE id_adres = 'T');

 ----2--insert Transakcja_log before delete Transakcja--
 -----3---delete Egzemplarz after delete Transakcja------

insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('TESTH52388A001281',7,'żółty','2001',29380.00,27000.00);

insert into Transakcja(id_egz, id_sprz, id_klient, data)
   values('TESTH52388A001281',2,5,'2019-04-22 14:10:25');

DELETE FROM Transakcja WHERE id_egz = 'TESTH52388A001281';

--DELETE FROM Egzemplarz WHERE id_egz = 'TESTH52388A001281';

