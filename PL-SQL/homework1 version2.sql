--Table Description 
CREATE TABLE intern 
(
id number NOT NULL PRIMARY KEY,
firstname varchar(50),
lastname varchar(50),
university varchar(50),
department varchar(50),
schoolclass number,
department varchar(50)
);


--Table content   
INSERT INTO intern 
values(1,'servet','tartar','munzur university','computer engineering',4,'mersin');

INSERT INTO intern 
values(2,'tolga','çatalpınar','bilkent university','computer engineering',2,'ankara');

INSERT INTO intern 
values(3,'ayşegül','karahançer','yıldız teknik university','computer engineering',3,'kayseri');

INSERT INTO intern 
values(4,'gizemnur','taşkın','istanbul teknik university','computer sciences',3,'trabzon');

INSERT INTO intern 
values(5,'melih sinan','doğrul','yıldız teknik university','computer engineering',3,'trabzon');

INSERT INTO intern 
values(6,'eren','yalçın','bilkent university','computer engineering',3,'ankara');

INSERT INTO intern 
values(7,'yunus','arslan','orta doğu teknik university','computer engineering',2,'antalya');

INSERT INTO intern 
values(8,'özge nur','koç','trakya university','computer teaching',4,'afyon karahisar');

INSERT INTO intern 
values(9,'ümit','atılgan','yıldız teknik university','mathematics engineering',3,'edirne');

INSERT INTO intern 
values(10,'beytullah','atik','karabük university','computer engineering',4,'mersin');

INSERT INTO intern 
values(11,'davut','kurt','inönü university','computer engineering',4,'malatya');

--query row
SELECT * FROM intern;

--delete table 
DROP TABLE intern;