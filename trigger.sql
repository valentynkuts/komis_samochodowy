SET client_encoding TO 'UTF-8';
CREATE LANGUAGE plpgsql;

--------1---delete Adres after delete Klient
CREATE FUNCTION delete_adres()
	RETURNS TRIGGER AS $$
BEGIN
	DELETE FROM Adres WHERE id_adres = OLD.id_adres;
	RAISE NOTICE 'Delete adres:%',OLD.id_adres;
	RETURN OLD;
END
$$ LANGUAGE 'plpgsql';


CREATE TRIGGER delete_adres
	AFTER DELETE ON Klient 
FOR EACH ROW EXECUTE PROCEDURE delete_adres();

--DROP TRIGGER delete_adres ON Klient;
--DROP FUNCTION delete_adres();

----2--insert Transakcja_log before delete Transakcja

CREATE TABLE Transakcja_log (
    --id               serial PRIMARY KEY,
	id_egz           varchar(20) not null,
    id_sprz          integer not null,
    id_klient        integer not null,
    data   timestamp not null
  
);

CREATE FUNCTION archiwizuj()
	RETURNS TRIGGER AS $$
BEGIN
	INSERT INTO Transakcja_log VALUES (OLD.id_egz, OLD.id_sprz, OLD.id_klient, OLD.data);
	RAISE NOTICE 'Transakcja_log';
	RETURN OLD;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER archiwizuj
	BEFORE DELETE ON Transakcja
FOR EACH ROW EXECUTE PROCEDURE archiwizuj();

--DROP TRIGGER archiwizuj ON Transakcja;
--DROP FUNCTION archiwizuj();

----3----delete Egzemplarz after delete Transakcja------

CREATE FUNCTION delete_egzemplarz()
	RETURNS TRIGGER AS $$
BEGIN
	DELETE FROM Egzemplarz WHERE id_egz = OLD.id_egz;
	RAISE NOTICE 'Delete Egzemplarz:%',OLD.id_egz;
	RETURN OLD;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER delete_egzemplarz
	AFTER DELETE ON Transakcja
FOR EACH ROW EXECUTE PROCEDURE delete_egzemplarz();

--DROP TRIGGER delete_egzemplarz ON Transakcja;
--DROP FUNCTION delete_egzemplarz();






