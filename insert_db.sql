SET DATESTYLE TO 'European,German';

insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k1','81-124','Gdynia','Chwarznieńska','33/5');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k2','81-444','Gdynia','Bema','41a/12');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k3','81-620','Gdynia','Górnicza','29');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k4','80-230','Gdańsk','Al. Hallera','8/5');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k5','80-619','Gdańsk','Focha','39-41 m.66');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k6','81-832','Gdańsk','Wąwóz','4');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k7','81-831','Sopot','Mazowiecka','73/44');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('k8','81-831','Sopot','Malczewskiego','103 m.8');  
    
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('s1','80-109','Gdańsk','Leśna Gór','41h/088');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('s2','81-400','Gdynia','Stolemów','14');
insert into Adres(id_adres,kod_pocztowy, miasto, ulica, nr_dom)
   values('s3','81-759','Sopot','Bohaterów Monte Cassino','52/54');


insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pani','Małgorzata','Kuśmierek','5056252840','k1');
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pan','Jan','Chodkiewicz','6126240860','k2');
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pani','Jadwiga','Szczęsna','6936243741','k3');
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pan','Bernard','Łukowski','586230799','k4');
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pan','Jan','Soroczyński','5053090788','k5');
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pani','Agnieszka','Kołak',NULL,'k6');
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pani','Ewa','Hałasa','583483240','k7');
insert into Klient(tytul,imie, nazwisko, telefon, id_adres)
   values('Pani','Grażyna','Wiśniewska',NULL,'k8');

insert into Sprzedawca(tytul,imie, nazwisko, rok_urodzenia, telefon, id_adres)
   values('Pani','Barbara','Songin','1984-07-01','5055528743','s1');
insert into Sprzedawca(tytul,imie, nazwisko, rok_urodzenia, telefon, id_adres)
   values('Pan','Andrzej','Sosnowy','1979-11-28','583467184','s2');
insert into Sprzedawca(tytul,imie, nazwisko, rok_urodzenia, telefon, id_adres)
   values('Pani','Wiesława','Lutomska-Cudny','1994-04-08','601622788','s3');

insert into Model(nazwa, opis)
   values('BMW 120 1er Sport Line *dt. Neuwagen*',
   	      'Stan: Nowy,Rodzaj skrzyni biegów:Manualna,Biegi:6,Pojemność skokowa:1.995 cm³,Cylinder:4,Ciężar własny:1.420 kg,Rodzaj napędu:Na tylnie koła');
insert into Model(nazwa, opis)
   values('BMW 120 i Advantage A',
  	      'Stan: Nowy,Rodzaj skrzyni biegów:Automatyczna,Biegi:8,Pojemność skokowa:1.998 cm³,Cylinder:4,Ciężar własny:1.455 kg,Rodzaj napędu:Na tylnie koła');
insert into Model(nazwa, opis)
   values('BMW 120 d 5-Türer Modell Advantage',
   	      'Stan: Nowy,Rodzaj skrzyni biegów:Manualna,Biegi:8,Pojemność skokowa:1.995 cm³');

insert into Model(nazwa, opis)
   values('Audi A3 IV',
   	      'Stan: Nowy,Rodzaj skrzyni biegów:Manualna,Biegi:6,Pojemność skokowa:1.995 cm³,Cylinder:4,Ciężar własny:1.420 kg,Rodzaj napędu:Na tylnie koła');
insert into Model(nazwa, opis)
   values('Dodge Challenger III',
   	      'Stan: Nowy,Rodzaj skrzyni biegów:Automatyczna,Biegi:8,Pojemność skokowa:1.998 cm³,Cylinder:4,Ciężar własny:1.455 kg,Rodzaj napędu:Na tylnie koła');
insert into Model(nazwa, opis)
   values('Volvo S80',
   	      'Stan: Nowy,Rodzaj skrzyni biegów:Manualna,Biegi:8,Pojemność skokowa:1.995 cm³');
insert into Model(nazwa, opis)
   values('Jeep Cherokee 2.2 MJD',
   	      'Stan: Nowy,Rodzaj skrzyni biegów:Manualna,Biegi:8,Pojemność skokowa:1.995 cm³');


insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('KNAJH52388A001279',1,'czarny','2015',21700.70,19000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('KNAJH52388A001280',1,'czarny','2015',21700.70,19000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('KNAJH52388A001281',1,'czarny','2015',21700.70,19000.00);

insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('FNAJH52388A001279',2,'czerwony','2018',25745.00,23000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('FNAJH52388A001280',2,'czerwony','2018',25745.00,23000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('FNAJH52388A001281',2,'czerwony','2015',25745.00,23000.00);

insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('BNAJH52388A001279',3,'czarny','2017',26380.00,24000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('BNAJH52388A001280',3,'biały','2017',26380.00,24000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('BNAJH52388A001281',3,'czerwony','2017',26380.00,24000.00);

insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('ANAJH52388A001279',4,'czarny','2011',30380.00,27000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('ANAJH52388A001280',4,'biały','2011',20380.00,27000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('VNAJH52388A001281',6,'żółty','2014',18380.00,16000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('VNAJH52388A001279',6,'czarny','2014',18380.00,16000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('DNAJH52388A001280',5,'biały','2018',36380.00,34000.00);
insert into Egzemplarz(id_egz, id_model, kolor, rok_produkcji, cena, koszt)
   values('JNAJH52388A001281',7,'żółty','2018',29380.00,27000.00);

insert into Transakcja(id_egz, id_sprz, id_klient, data)
   values('DNAJH52388A001280',2,5,'2019-04-22 14:10:25');
insert into Transakcja(id_egz, id_sprz, id_klient, data)
   values('FNAJH52388A001281',2,3,'2019-04-28 10:55:04');
insert into Transakcja(id_egz, id_sprz, id_klient, data)
   values('FNAJH52388A001280',1,7,'2019-05-04 16:48:49');
insert into Transakcja(id_egz, id_sprz, id_klient, data)
   values('FNAJH52388A001279',2,3,'2019-04-28 10:55:04');
insert into Transakcja(id_egz, id_sprz, id_klient, data)
   values('KNAJH52388A001281',1,7,'2019-05-04 16:48:49');
-----------------
--insert into Transakcja(id_egz, id_sprz, id_klient, data) values('VNAJH52388A001281',3,1,current_timestamp);
--insert into Transakcja(id_egz, id_sprz, id_klient) values('JNAJH52388A001281',3,1);
 
 

