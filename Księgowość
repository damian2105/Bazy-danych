CREATE DATABASE firma;
CREATE SCHEMA ksiegowosc;

CREATE TABLE ksiegowosc.Pracownicy (
    id_pracownika VARCHAR(3) PRIMARY KEY NOT NULL, 
    imie VARCHAR(25), 
    nazwisko VARCHAR(30), 
    adres VARCHAR(35), 
    telefon VARCHAR(9) 
    );

CREATE TABLE ksiegowosc.Godziny (
    id_godziny VARCHAR(3) PRIMARY KEY NOT NULL, 
    data DATE, 
    liczba_godzin INT, 
    id_pracownika VARCHAR(3) REFERENCES ksiegowosc.pracownicy(id_pracownika)
    ); 

CREATE TABLE ksiegowosc.Pensja (
   id_pensji VARCHAR(3) PRIMARY KEY NOT NULL, 
    stanowisko VARCHAR(45), 
    kwota INT
    );

CREATE TABLE ksiegowosc.Premia (
    id_premii VARCHAR(3) PRIMARY KEY NOT NULL, 
    rodzaj VARCHAR(20), 
    kwota INT
    );

CREATE TABLE ksiegowosc.Wynagrodzenie ( 
    id_wynagrodzenia VARCHAR(3) PRIMARY KEY NOT NULL, 
    data DATE, 
    id_pracownika VARCHAR(3) REFERENCES ksiegowosc.Pracownicy(id_pracownika), 
    id_godziny VARCHAR(3) REFERENCES ksiegowosc.Godziny(id_godziny), 
    id_pensji VARCHAR(3) REFERENCES ksiegowosc.Pensja(id_pensji), 
    id_premii VARCHAR(3) REFERENCES ksiegowosc.Premia(id_premii)
    );


INSERT INTO ksiegowosc.Pracownicy(id_pracownika, imie, nazwisko, adres, telefon) VALUES
  ('W01', 'Andrzej', 'Kowal', 'Kraków ul. Smolki 81', '506182998'),
  ('W02', 'Irena', 'Joda', 'Kraków ul. Łany 21', '782555231'), 
  ('W03', 'Kronelia', 'Mikułowska', 'Kraków ul. Kręta 122', '739213331'),
  ('W04', 'Mateusz', 'Królik', 'Myślenice ul. Złota 2', '502177122'),
  ('W05', 'Krystian', 'Nowak', 'Myślenice ul. Spacerowa 7', '622381245')
  ('W06', 'Maciej', 'Słoneczny', 'Myślenice ul. Kasprowicza 29', '672291432'),
  ('W07', 'Anna', 'Nowak', 'Myślenice ul. Spacerowa 7', '504673992'),
  ('W08', 'Kajetan', 'Mróz', 'Skawina ul. Żwirki i Wigury 117', '532912432'),
  ('W09', 'Adrian', 'Pradel', 'Skawina ul. Kroabnicka 49', '621993472'),
  ('W10', 'Katarzyna', 'Ziemniak', 'Skawina ul. Zacisze 5', '781987177');

INSERT INTO ksiegowosc.Godziny (id_godziny, data, liczba_godzin , id_pracownika) VALUES
  ('T01', '31-05-2020', 141, 'W01'),
  ('T02', '30-05-2020', 130, 'W02'),
  ('T03', '31-05-2020', 151, 'W03'),
  ('T04', '28-05-2020', 142, 'W04'),
  ('T05', '29-05-2020', 167, 'W05'),
  ('T06', '31-05-2020', 160, 'W06'),
  ('T07', '30-05-2020', 157, 'W07'),
  ('T08', '28-05-2020', 160, 'W08'),
  ('T09', '29-05-2020', 168, 'W09'),
  ('T10', '31-05-2020', 154, 'W10');

INSERT INTO ksiegowosc.Pensja (id_pensji, stanowisko, kwota) VALUES
  ('S01', 'fakturzysta', 5000 ), 
  ('S02', 'dyrektor finansowy', 12000 ), 
  ('S03', 'stażysta', 2800 ), 
  ('S04', 'fakturzysta', 5100 ), 
  ('S05', 'główny księgowy', 9100 ), 
  ('S06', 'analityk kredytowy', 9800), 
  ('S07', 'stażystka', 3300), 
  ('S08', 'programista', 6230 ), 
  ('S09', 'specjalista ds. kadr', 5800), 
  ('S10', 'kierownik ds. finansowych', 7400); 


INSERT INTO ksiegowosc.Premia (id_premii, rodzaj, kwota) VALUES
  ('B01', 'regulaminowa', 850),
  ('B02', 'uznaniowa', 900),
  ('B03', 'uznaniowa', 600),
  ('B04', 'roczna', 1200),
  ('B05', 'uznaniowa', 350),
  ('B06', 'regulaminowa', 750),
  ('B07', 'roczna', 1310),
  ('B08', 'kwartalna', 550),
  ('B09', 'roczna', 1200),
  ('B10', 'kwartalna', 600);


INSERT INTO ksiegowosc.Wynagrodzenie( id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
  ('R1', '31-05-2020', 'W01', 'T01', 'S01', 'B01'), 
  ('R2', '31-05-2020', 'W02', 'T02', 'S02', 'B02'),
  ('R3', '31-05-2020', 'W03', 'T03', 'S03', 'B03'),
  ('R4', '31-05-2020', 'W04', 'T04', 'S04', 'B04'),
  ('R5', '31-05-2020', 'W05', 'T05', 'S05', 'B05'),
  ('R6', '31-05-2020', 'W06', 'T06', 'S06', 'B06'),
  ('R7', '31-05-2020', 'W07', 'T07', 'S07', 'B07'),
  ('R8', '31-05-2020', 'W08', 'T08', 'S08', 'B08'),
  ('R9', '31-05-2020', 'W09', 'T09', 'S09', 'B09'),
  ('R10', '31-05-2020', 'W10', 'T10', 'S10', 'B10'),


SELECT * FROM ksiegowosc.Pracownicy;
SELECT * FROM ksiegowosc.Godziny;
SELECT * FROM ksiegowosc.Pensja;
SELECT * FROM ksiegowosc.Premia;
SELECT * FROM ksiegowosc.Wynagrodzenie;


--zapytania
--a
SELECT id_pracownika, nazwisko FROM pracownicy;
--b
SELECT id_pracownika FROM wynagrodzenie, pensje WHERE wynagrodzenie.id_pensji = pensje.id_pensji AND pensje.kwota  > 1000
--c
SELECT id_pracownika FROM wynagrodzenia WHERE 
  	(SELECT id_premia FROM premia WHERE kwota = NULL AND (SELECT id_pensja DROM pensja WHERE kwota>200))
--d
SELECT * FROM pracownicy WHERE imie LIKE 'J%'
--e
SELECT * FROM pracownicy WHERE nazwisko LIKE '%n%' AND imie LIKE '%a'
--f
SELECT imie, nazwisko, liczba_godzin-160 AS nadgodziny 
  	FROM ksiegowosc.pracownicy JOIN ksiegowosc.godziny ON pracownicy.id_pracownika = godziny.id_pracownika;
--g
SELECT imie, nazwisko, kwota FROM ksiegowosc.pracownicy, ksiegowosc.pensja, ksiegowosc.wynagrodzenie
  	WHERE ksiegowosc.pensja.id_pensji = ksiegowosc.wynagrodzenie.id_pensji
    	AND ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenie.id_pracownika AND '1500' <= kwota AND kwota <= '3000';
--h
SELECT imie, nazwisko, liczba_godzin -160 AS nadgodziny, id_premii FROM ksiegowosc.pracownicy, ksiegowosc.godziny, ksiegowosc.wynagrodzenie
  	WHERE ksiegowosc.pracownicy.id_pracownika = ksiegowosc.godziny.id_pracownika
    	AND ksiegowosc.wynagrodzenie.id_godziny = ksiegowosc.godziny.id_godziny AND liczba_godzin > 160 AND id_premii = NULL;
--i
SELECT pensje.stanowisko, COUNT(pensje.stanowisko) FROM pensje, wynagrodzenie WHERE pensje.id_pensji = wynagrodzenie.id_pensji 
  	GROUP BY pensje.stanowisko
--j
SELECT imie, nazwisko, pensja.kwota, premia.kwota FROM ksiegowosc.pracownicy, ksiegowosc.wynagrodzenie, ksiegowosc.pensja, ksiegowosc.premia 
  	WHERE ksiegowosc.wynagrodzenie.id_pracownika = ksiegowosc.pracownicy.id_pracownika 
    	AND ksiegowosc.wynagrodzenie.id_pensji = ksiegowosc.pensja.id_pensji AND ksiegowosc.wynagrodzenie.id_premii = ksiegowosc.premia.id_premii 
      	ORDER BY ksiegowosc.pensja.kwota DESC, ksiegowosc.premia.kwota DESC;
--k
SELECT pensje.stanowisko, COUNT(pensje.stanowisko) FROM pensje, wynagrodzenie WHERE pensje.id_pensji = wynagrodzenie.id_pensji 
		GROUP BY pensje.stanowisko
--l
SELECT MIN(kwota) AS minimum, AVG(kwota) AS średnia, MAX(kwota) AS maksimum FROM pensje WHERE stanowisko = 'stażysta'
--m
SELECT SUM(pensje.kwota) AS łącznie FROM wynagrodzenie, pensje WHERE wynagrodzenie.id_pensji = pensje.id_pensji
--n
SELECT COUNT (stanowisko) AS stanowiska, stanowisko FROM ksiegowosc.pensja, ksiegowosc.wynagrodzenie
  	WHERE ksiegowosc.wynagrodzenie.id_pensji = ksiegowosc.pensja.id_pensji GROUP BY ksiegowosc.pensja.stanowisko;
--o
SELECT pensje.stanowisko, COUNT(*) AS łącznie FROM pensje, premie, wynagrodzenie 
	WHERE pensje.id_pensji = wynagrodzenie.id_pensji AND premie.id_premii = wynagrodzenie.id_premii
	GROUP BY pensje.stanowisko
--p
DELETE FROM ksiegowosc.wynagrodzenie USING ksiegowosc.pensja WHERE pensja.kwota <1200 AND wynagrodzenie.id_pensji = pensja.id_pensji

