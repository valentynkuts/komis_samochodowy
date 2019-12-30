    CREATE TABLE Adres
(
    id_adres           varchar(10)   PRIMARY KEY,
    kod_pocztowy       char(6),
    miasto             varchar(32),
    ulica              varchar(64),
    nr_dom             varchar(14)
);

CREATE TABLE Model
(
    id_model    serial  PRIMARY KEY,
    nazwa       text  not null,
    opis        text   not null
);

CREATE TABLE Klient
(
    id_klient    serial       PRIMARY KEY,
    tytul        char(4),
    imie         varchar(32)   not null,
    nazwisko     varchar(32)   not null,
    telefon      varchar(11)   UNIQUE,
    id_adres      varchar(10)  UNIQUE,
    FOREIGN KEY(id_adres) REFERENCES Adres(id_adres)
    ON DELETE CASCADE
    
);

CREATE TABLE Sprzedawca
(
    id_sprz       serial       PRIMARY KEY,
    tytul         char(4),
    imie          varchar(32)   not null,
    nazwisko      varchar(32)   not null,
    rok_urodzenia    date       not null,
    telefon       varchar(11)  UNIQUE,
    id_adres      varchar(10)      UNIQUE,
    FOREIGN KEY(id_adres) REFERENCES Adres(id_adres)
    ON DELETE CASCADE
);

CREATE TABLE Egzemplarz
(
    id_egz           varchar(20)  PRIMARY KEY,
    id_model         integer not null,
    kolor            varchar(32),
    rok_produkcji    varchar(4)    not null,
    cena             numeric(9,2)   not null,
    koszt            numeric(9,2)   not null,
      
    FOREIGN KEY(id_model) REFERENCES Model(id_model)
    ON UPDATE NO ACTION ON DELETE NO ACTION
       
);

CREATE TABLE Transakcja
(
    id_egz           varchar(20) not null,
    id_sprz          integer not null,
    id_klient        integer not null,
    data    timestamp  not null,
    --data   timestamp  with time zone default current_timestamp,
  
    CONSTRAINT   transakcja_pk PRIMARY KEY(id_egz, id_sprz, id_klient),
    
    FOREIGN KEY(id_egz) REFERENCES Egzemplarz(id_egz)
    ON UPDATE NO ACTION ON DELETE NO ACTION,
      
    FOREIGN KEY(id_sprz) REFERENCES Sprzedawca(id_sprz)
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    
    FOREIGN KEY(id_klient) REFERENCES Klient(id_klient)
    ON UPDATE NO ACTION ON DELETE NO ACTION
       
);







