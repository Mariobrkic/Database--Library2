BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Korisnik" (
	"KorisnikID"	INTEGER,
	"Ime"	TEXT NOT NULL,
	"Prezime"	TEXT NOT NULL,
	"Adresa"	TEXT NOT NULL,
	"Grad"	TEXT NOT NULL,
	PRIMARY KEY("KorisnikID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Posudbe" (
	"PosudbaID"	INTEGER,
	"KnjigaID"	NUMERIC NOT NULL,
	"KorisnikID"	INTEGER NOT NULL,
	"Datum_posudbe"	DATE,
	"Datum_povratka"	DATE,
	PRIMARY KEY("PosudbaID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Knjige" (
	"KnjigaID"	INTEGER,
	"Naslov"	TEXT,
	"Autor"	TEXT NOT NULL,
	"Naklada"	TEXT NOT NULL,
	"Godina Izdanja"	NUMERIC NOT NULL,
	"Prevoditelj"	TEXT,
	PRIMARY KEY("KnjigaID" AUTOINCREMENT)
);
INSERT INTO "Korisnik" VALUES (1,'Mario ','Brkić','Put Pudarice 30 C','23000 Zadar');
INSERT INTO "Korisnik" VALUES (2,'Mate','Kardum','Put Pudarice 13 A','23000 Zadar');
INSERT INTO "Korisnik" VALUES (3,'Antonio ','Babaić','Rastočine','51000 Rijeka');
INSERT INTO "Korisnik" VALUES (4,'Roko ','Nakić','Hrvatskog sabora 8','23000 Zadar');
INSERT INTO "Korisnik" VALUES (5,'Rafael ','Kačinari','Ivana Gorana Kovačića 22','23000 Zadar');
INSERT INTO "Korisnik" VALUES (6,'Mario ','Brkić','Ulica Grge Tuškana 7','10000 Zagreb');
INSERT INTO "Korisnik" VALUES (7,'Mario ','Brkić','Put Pudarice 30 C','23000 Zadar');
INSERT INTO "Korisnik" VALUES (8,'Mate','Kardum','Put Pudarice 13 A','23000 Zadar');
INSERT INTO "Korisnik" VALUES (9,'Antonio ','Babaić','Rastočine','51000 Rijeka');
INSERT INTO "Korisnik" VALUES (10,'Roko ','Nakić','Hrvatskog sabora 8','23000 Zadar');
INSERT INTO "Korisnik" VALUES (11,'Rafael ','Kačinari','Ivana Gorana Kovačića 22','23000 Zadar');
INSERT INTO "Korisnik" VALUES (12,'Mario ','Brkić','Ulica Grge Tuškana 7','10000 Zagreb');
INSERT INTO "Posudbe" VALUES (1,1,1,'2021-10-12','2021-10-14');
INSERT INTO "Posudbe" VALUES (2,2,2,'2022-01-08','2021-02-14');
INSERT INTO "Posudbe" VALUES (3,3,3,'2021-02-07','2021-02-18');
INSERT INTO "Posudbe" VALUES (4,4,4,'2020-02-07','2021-03-14');
INSERT INTO "Posudbe" VALUES (5,5,5,'2022-02-07',NULL);
INSERT INTO "Posudbe" VALUES (6,6,6,'2022-02-07',NULL);
INSERT INTO "Knjige" VALUES (1,'Rakova Obratnica','Henry Miller','Naklada Libar',1978,'Antun Šoljan');
INSERT INTO "Knjige" VALUES (2,'Filozofija 3 Misli 1','Blaise Pascal ','BIGZ',1980,'Miodrag Ibrovac');
INSERT INTO "Knjige" VALUES (3,'Filozofija 3 Misli 2','Blaise Pascal ','BIGZ',1980,'Miodrag Ibrovac');
INSERT INTO "Knjige" VALUES (4,'Ličnost u psihologiji','John Redford, Richard Kirby','Metheun, London',1975,'Mirjana Joanović');
INSERT INTO "Knjige" VALUES (5,'Braća Karamazovi','F.M. Dostojevski','Znanje Zagreb',1987,'Veljko Lukić, Jakša Kušan');
INSERT INTO "Knjige" VALUES (6,'Nakon potresa','Haruki Murakami ','Vuković i Runjić',2011,'Maja Šoljan');
INSERT INTO "Knjige" VALUES (7,'Grobnica za Borisa Davidovića','Danilo Kiš','BIGZ',1987,NULL);
INSERT INTO "Knjige" VALUES (8,'King Lear','William Shakespeare','Collins Classics',2011,NULL);
INSERT INTO "Knjige" VALUES (9,'Kome Zvono Zvoni ','Ernest Hemingway','Zora Zagreb',1965,'Šime Balen');
INSERT INTO "Knjige" VALUES (10,'Gledišta Jednog Klauna','Heinrich Boll','August Cesarec Zagreb',1989,'Sonja Đerasimović');
INSERT INTO "Knjige" VALUES (11,'Pokojni Matija Pascal','Luigi Pirandello','Svjetlost Sarajevo',1966,'Jugana Stojanović');
INSERT INTO "Knjige" VALUES (12,'Šok Koridor','Michael Avallon','Alibi krimi biblioteka',2002,'Nebojša Radić');
INSERT INTO "Knjige" VALUES (13,'Priče o običnom ludilu ','Charles Bukowski','Šareni Dućan Koprivnica',2008,'Zoran Tomić');
INSERT INTO "Knjige" VALUES (14,'Život je Negdje Drugdje','Milan Kundera','Znanje Zagreb',1979,'Nikola Kršić');
INSERT INTO "Knjige" VALUES (15,'Neznanje','Milan Kundera','Meandar',2008,'Vanda Mikšić');
INSERT INTO "Knjige" VALUES (16,'Šala','Milan Kundera','Znanje ',1982,'Nikola Kršić');
INSERT INTO "Knjige" VALUES (17,'Slasti Japana','Ludovic Naudeau','Zemaljska tiskara Zagreb',1922,'Dr. Nikola Andrić');
INSERT INTO "Knjige" VALUES (18,'Film i Marksizam','Dr. Milan Damjanović','Insitut za film',1981,NULL);
INSERT INTO "Knjige" VALUES (19,'Monologhi','Paolo Rossi','Gremese Editore',1989,NULL);
INSERT INTO "Knjige" VALUES (20,'Candide Zadig','Voltaire','Dani Biblioteka',2004,'R.M. Šurbatović');
INSERT INTO "Knjige" VALUES (21,'Priče za nesanicu','Alfred Hitchcock','Večernjakova biblioteka',2004,'Borivoj Jurković');
INSERT INTO "Knjige" VALUES (22,'Samo deca','Patty Smith','Rende',2013,'Periša Perišić');
INSERT INTO "Knjige" VALUES (23,'Roman o Londonu, prva knjiga','Miloš Crnjanski','Svjetlost Sarajevo',1989,NULL);
INSERT INTO "Knjige" VALUES (24,'Odgoj Djevojaka u Češkoj','Michal Viewegh','DiVić',1997,'Dagmar Ruljančič');
INSERT INTO "Knjige" VALUES (25,'Tajno Oružje','Julio Cortazar','Šareni Dućan Koprivnica',2011,'Tanja Tarbuk');
INSERT INTO "Knjige" VALUES (26,'Amerika','Franz Kafka','Šareni Dućan Koprivnica',2006,'Zlatko Crnković');
INSERT INTO "Knjige" VALUES (27,'Lolita','Vladimir Nabokov','Biblioteka Jutarnjeg Lista',2004,'Zlatko Crnković');
INSERT INTO "Knjige" VALUES (28,'Stranac','Albert Camus','Biblioteka Jutarnjeg Lista',2004,NULL);
INSERT INTO "Knjige" VALUES (29,'Kriza Psihoanalize','Erich Fromm','Naprijed',1984,'Stanislav Tuksar, Lidija Lisicki- Kolman, Branko Petrović');
INSERT INTO "Knjige" VALUES (30,'Dnevnik ','Franz Kafka','Zora',1968,'Traute Šegedin');
INSERT INTO "Knjige" VALUES (31,'Dogma o Kristu, Bit ćete kao Bog, Psihoanaliza i religija','Erich Fromm','Naprijed',1984,'Gvozden Flego');
INSERT INTO "Knjige" VALUES (32,'Egzil ','Enzo Bettiza','Marijan tisak ',2001,'Karmen Milačić, Ana Prpić');
INSERT INTO "Knjige" VALUES (33,'Priče o Kronopijima i Famama','Julio Cortazar','Šareni Dućan Koprivnica',2010,'Nikolina Židek');
INSERT INTO "Knjige" VALUES (34,'Historija Marksizma','Predrag Vranicki ','Naprijed','1946-1971',NULL);
INSERT INTO "Knjige" VALUES (35,'Školice','Julio Cortazar','Pelago',2009,'Dinko Telećan');
INSERT INTO "Knjige" VALUES (36,'Imaju svi pravo ','Paolo Sorrentino ','Vuković i Runjić',2013,'Mate Maras');
INSERT INTO "Knjige" VALUES (37,'Dobitnici ','Julio Cortazar','svetskaknjiževnost',1960,'Aleksandra Matić');
INSERT INTO "Knjige" VALUES (38,'La Fattoria Degli Animali','George Orwell','Oscar Mondadori',1964,'Bruno Tasso');
INSERT INTO "Knjige" VALUES (39,'Lanzarote i drugi tekstovi ','Michel Huollebecq','Litteris',2007,NULL);
INSERT INTO "Knjige" VALUES (40,'Noćne Priče ','Goran Tribuson','Mozaik Knjiga',2010,'');
INSERT INTO "Knjige" VALUES (41,'Čovjek bez osobina','Robert Musil','Fraktura',2008,'Andy Jelčić');
INSERT INTO "Knjige" VALUES (42,'Asser Savus','Miroslav S. Mađer','Alfa August Cesarec',1987,NULL);
INSERT INTO "Knjige" VALUES (43,'Il Principe ','Niccolo Machiavelli','Mondadori',2016,NULL);
INSERT INTO "Knjige" VALUES (44,'Talijanska Gramatika','Josip Jernej','Školska knjiga Zagreb',2004,NULL);
CREATE VIEW Pregled as
SELECT
    k.Naslov, k.Autor, k.Naklada, k.[Godina Izdanja], k.Prevoditelj,
    ko.Ime, ko.Prezime, ko.Adresa, ko.Grad,
    p.Datum_posudbe, p.Datum_povratka,
    CASE
        WHEN p.Datum_povratka IS NULL
        THEN julianday(DATE('now', 'localtime')) - julianday(p.Datum_posudbe)
        ELSE julianday(p.Datum_povratka) - julianday(p.Datum_posudbe)
    END as Trajanje,
    CASE
        WHEN p.Datum_povratka IS NULL
        THEN '⌚ Posuđeno'
        ELSE '✅ Vraćeno'
    END as Status
FROM
    Posudbe p
    JOIN Knjige k
        ON p.KnjigaID = k.KnjigaID
    JOIN Korisnik ko
        ON p.KorisnikId = ko.KorisnikId;
COMMIT;
