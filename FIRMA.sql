CREATE DATABASE firma;

CREATE TABLE pracownicy(
Id_pracownika INT PRIMARY KEY, 
Imie_pracownika VARCHAR(20) NOT NULL,
Nazwisko_pracownika VARCHAR(20) NOT NULL,
Adres VARCHAR(70) NOT NULL,
Numer_Telefonu INT NOT NULL
);


CREATE TABLE godziny(
Id_godziny INT PRIMARY KEY, 
Data VARCHAR(20) NOT NULL,
Liczba_godzin INT,
 Id_pracownika INT
);



CREATE TABLE pensje(
Id_pensji INT PRIMARY KEY, 
Stanowisko VARCHAR(20) NOT NULL,
Kwota INT,
Id_premii INT
);

CREATE TABLE premie(
Id_premii INT PRIMARY KEY, 
Rodzaj VARCHAR(50),
Kwota INT
);
ALTER TABLE pensje
ADD FOREIGN KEY (Id_premii) REFERENCES premie(Id_premii);
ALTER TABLE godziny
ADD FOREIGN KEY (Id_pracownika) REFERENCES pracownicy(Id_pracownika);

INSERT INTO pracownicy VALUES(1,'Krzysztof', 'Wachowicz', 'Bielsko-Biała', 725241240);
INSERT INTO pracownicy VALUES(2,'Daniel', 'Rucki', 'Żywiec', 653252341);
INSERT INTO pracownicy VALUES(3,'Beata', 'Rzycka', 'Mikuszowice', 567512557);
INSERT INTO pracownicy VALUES(4,'Sebastian', 'Wesołek', 'Mazańcowice', 875314634);
INSERT INTO pracownicy VALUES(5,'Piotr', 'Kot', 'Kobiernice', 745224416);
INSERT INTO pracownicy VALUES(6,'Barbara', 'Mielnik', 'Warszawa', 532653241);
INSERT INTO pracownicy VALUES(7,'Mateusz', 'Prochot', 'Wrocław', 698359182);
INSERT INTO pracownicy VALUES(8,'Monika', 'Kozieł', 'Kraków', 653243424);
INSERT INTO pracownicy VALUES(9,'Tomasz', 'Kruszyna', 'Mielec', 875453423);
INSERT INTO pracownicy VALUES(10,'Irena', 'Żaba', 'Bulowice', 728154365);
COMMIT;


INSERT INTO godziny VALUES(1,'28-03-2020', 8, 1);
INSERT INTO godziny VALUES(2,'28-03-2020', 8, 2);
INSERT INTO godziny VALUES(3,'28-03-2020', 7, 3);
INSERT INTO godziny VALUES(4,'28-03-2020', 7, 4);
INSERT INTO godziny VALUES(5,'28-03-2020', 8, 6);
INSERT INTO godziny VALUES(6,'29-03-2020', 8, 6);
INSERT INTO godziny VALUES(7,'29-03-2020', 7, 6);
INSERT INTO godziny VALUES(8,'30-03-2020', 8, 3);
INSERT INTO godziny VALUES(9,'30-03-2020', 7, 4);
INSERT INTO godziny VALUES(10,'31-03-2020', 7, 4);


INSERT INTO pensje VALUES(1,'konserwator', 2000,1);
INSERT INTO pensje VALUES(2,'ksiegowa', 3500,3);
INSERT INTO pensje VALUES(3,'stazysta', 4000,5);
INSERT INTO pensje VALUES(4,'dyrektor', 10000,6);
INSERT INTO pensje VALUES(5,'zastepca dyrektora', 8000,9);
INSERT INTO pensje VALUES(6,'informatyk', 3800,4);
INSERT INTO pensje VALUES(7,'ekspert ds. sprzedazy', 6000,7);
INSERT INTO pensje VALUES(8,'ICT', 8000,8);
INSERT INTO pensje VALUES(9,'hr', 7000,10);
INSERT INTO pensje VALUES(10,'specjalista ds. marketingu', 5500,2);


INSERT INTO premie VALUES(1,'brak', 0);
INSERT INTO premie VALUES(2,'wydajnosc', 300);
INSERT INTO premie VALUES(3,'sprzedaz', 150);
INSERT INTO premie VALUES(4,'okolicznosciowa', 350);
INSERT INTO premie VALUES(5,'jubileuszowa', 700);
INSERT INTO premie VALUES(6,'kwartalna', 400);
INSERT INTO premie VALUES(7,'efektywnosciowa', 500);
INSERT INTO premie VALUES(8,'swieta', 200);
INSERT INTO premie VALUES(9,'roczna', 550);
INSERT INTO premie VALUES(10,'uznaniowa', 100);



SELECT * FROM pracownicy;
SELECT * FROM godziny;
SELECT * FROM pensje;
SELECT * FROM premie;
