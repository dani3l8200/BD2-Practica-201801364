set trimout on
set tab off
set wrap off;
set pagesize 50000;
set linesize 120;
SET ECHO ON

--DDL
CREATE TABLE Liga(
    liga integer PRIMARY KEY,
    nombre CHAR(250 CHAR) NOT NULL,
    fecha_inicio Date NOT NULL,
    fecha_fin Date NOT NULL
);

/* drop table Liga; */

CREATE TABLE Jornada(
    jornada integer PRIMARY KEY,
    numero integer NOT NULL,
    Liga_liga integer NOT NULL
);

--DROP TABLE Jornada;

CREATE TABLE Equipo(
    equipo integer PRIMARY KEY,
    nombre char(300 char) NOT NULL
);

/* DROP TABLE Equipo; */

CREATE TABLE Jugador(
    jugador integer PRIMARY KEY,
    nombre char(300 char) NOT NULL,
    goles integer NOT NULL,
    Equipo_equipo integer
);

/* DROP TABLE Jugador; */

CREATE TABLE Partido(
    partido integer PRIMARY KEY,
    fecha date NOT NULL,
    goles_local integer NOT NULL,
    goles_visita integer NOT NULL,
    Jornada_jornada integer NOT NULL,
    Equipo_equipo integer NOT NULL,
    Equipo_equipo1 integer NOT NULL
);
-- select tname from tab;
/* DROP TABLE Partido; */

--DML
INSERT INTO Liga VALUES (1,'Liga BBVA',TO_DATE('01-07-2019','DD-MM-YYYY'), TO_DATE('31-05-2019','DD-MM-YYYY'));

INSERT INTO Equipo VALUES (1,'Villarreal');
INSERT INTO Equipo VALUES (2,'Valencia');
INSERT INTO Equipo VALUES (3,'RealMadrid');
INSERT INTO Equipo VALUES (4,'Atlético de Madrid');
INSERT INTO Equipo VALUES (5,'Barcelona');

INSERT INTO Jugador VALUES (1,'Karim Benzema',14,3);
INSERT INTO Jugador VALUES (2,'Sergio Ramos',5,3);
INSERT INTO Jugador VALUES (3,'Toni Kroos',3,3);
INSERT INTO Jugador VALUES (4,'Luka Modric',3,3);
INSERT INTO Jugador VALUES (5,'Casemiro',3,1);
INSERT INTO Jugador VALUES (6,'Vinícius Júnior',2,3);
INSERT INTO Jugador VALUES (7,'Gareth Bale',2,3);
INSERT INTO Jugador VALUES (8,'Federico Valverde',2,3);
INSERT INTO Jugador VALUES (9,'Marcelo',0,3);
INSERT INTO Jugador VALUES (10,'Luka Jovic',2,3);
INSERT INTO Jugador VALUES (11,'Lucas Vázquez',2,3);
INSERT INTO Jugador VALUES (12,'Eden Hazard',1,3);
INSERT INTO Jugador VALUES (13,'Thibaut Courtois',0,3);


INSERT INTO Jugador VALUES (14,'Lionel Messi',19,5);
INSERT INTO Jugador VALUES (15,'Luis Suárez',11,5);
INSERT INTO Jugador VALUES (16,'Antoine Griezmann',8,5);
INSERT INTO Jugador VALUES (17,'Arturo Vidal',6,5);
INSERT INTO Jugador VALUES (18,'Sergio Busquets',2,5);
INSERT INTO Jugador VALUES (19,'Gerard Piqué',1,5);
INSERT INTO Jugador VALUES (20,'Ousmane Dembélé',1,5);
INSERT INTO Jugador VALUES (21,'Sergi Roberto',1,5);
INSERT INTO Jugador VALUES (22,'Ivan Rakitic',0,5);
INSERT INTO Jugador VALUES (23,'Samuel Umtiti',0,5);
INSERT INTO Jugador VALUES (24,'Marc-André ter Stegen',0,5);
INSERT INTO Jugador VALUES (25,'Rafinha',2,5);




INSERT INTO Jugador VALUES (26,'Álvaro Morata',8,4);
INSERT INTO Jugador VALUES (27,'Ángel Correa',5,4);
INSERT INTO Jugador VALUES (28,'João Félix',4,4);
INSERT INTO Jugador VALUES (29,'Saúl Ñíguez',3,4);
INSERT INTO Jugador VALUES (30,'Vitolo',2,4);
INSERT INTO Jugador VALUES (31,'Koke',2,4);
INSERT INTO Jugador VALUES (32,'Diego Costa',2,4);
INSERT INTO Jugador VALUES (33,'Tomas Partney',2,4);
INSERT INTO Jugador VALUES (34,'Felipe',1,4);
INSERT INTO Jugador VALUES (35,'Marcos Llorente',1,4);
INSERT INTO Jugador VALUES (36,'Jan Oblak',0,4);
INSERT INTO Jugador VALUES (37,'Antonio Adán',0,4);




INSERT INTO Jugador VALUES (38,'Maxi Gómez',9,3);
INSERT INTO Jugador VALUES (39,'Daniel Parejo',8,3);
INSERT INTO Jugador VALUES (40,'Kevin Gameiro',5,3);
INSERT INTO Jugador VALUES (41,'Ferrán Torres',4,3);
INSERT INTO Jugador VALUES (42,'Rodrigo Moreno',2,3);
INSERT INTO Jugador VALUES (43,'Carlos Soler',2,3);
INSERT INTO Jugador VALUES (44,'Denis Cheryshev',1,3);
INSERT INTO Jugador VALUES (45,'Daniel Wass',1,3);
INSERT INTO Jugador VALUES (46,'Gonçalo Guedes',0,3);
INSERT INTO Jugador VALUES (47,'Ezequiel Garay',0,3);
INSERT INTO Jugador VALUES (48,'Jaume Costa',0,3);
INSERT INTO Jugador VALUES (49,'Francis Coquelin',0,3);

INSERT INTO Jornada VALUES (1,1,1);
INSERT INTO Jornada VALUES (2,2,1);
INSERT INTO Jornada VALUES (3,3,1);
INSERT INTO Jornada VALUES (4,4,1);
INSERT INTO Jornada VALUES (5,5,1);
INSERT INTO Jornada VALUES (6,6,1);
INSERT INTO Jornada VALUES (7,7,1);
INSERT INTO Jornada VALUES (8,8,1);
INSERT INTO Jornada VALUES (9,9,1);
INSERT INTO Jornada VALUES (10,10,1);
INSERT INTO Jornada VALUES (11,11,1);

INSERT INTO Partido VALUES (1,TO_DATE('07-07-2019','DD-MM-YYYY'),2,3,1,2,3);
INSERT INTO Partido VALUES (2,TO_DATE('09-07-2019','DD-MM-YYYY'),4,1,1,4,5);

INSERT INTO Partido VALUES (3,TO_DATE('08-08-2019','DD-MM-YYYY'),0,0,2,2,4);
INSERT INTO Partido VALUES (4,TO_DATE('10-08-2019','DD-MM-YYYY'),0,1,2,3,5);

INSERT INTO Partido VALUES (5,TO_DATE('06-09-2019','DD-MM-YYYY'),1,2,3,5,2);
INSERT INTO Partido VALUES (6,TO_DATE('07-09-2019','DD-MM-YYYY'),5,1,3,4,3);

INSERT INTO Partido VALUES (7,TO_DATE('10-10-2019','DD-MM-YYYY'),2,3,4,3,2);
INSERT INTO Partido VALUES (8,TO_DATE('12-10-2019','DD-MM-YYYY'),4,1,4,5,4);

INSERT INTO Partido VALUES (9,TO_DATE('16-11-2019','DD-MM-YYYY'),0,0,5,4,2);
INSERT INTO Partido VALUES (10,TO_DATE('13-11-2019','DD-MM-YYYY'),0,1,5,5,3);

INSERT INTO Partido VALUES (11,TO_DATE('19-12-2019','DD-MM-YYYY'),1,2,6,5,2);
INSERT INTO Partido VALUES (12,TO_DATE('20-12-2019','DD-MM-YYYY'),5,1,6,4,3);

INSERT INTO Partido VALUES (13,TO_DATE('07-01-2020','DD-MM-YYYY'),2,3,7,2,3);
INSERT INTO Partido VALUES (14,TO_DATE('09-01-2020','DD-MM-YYYY'),4,1,7,4,5);

INSERT INTO Partido VALUES (15,TO_DATE('08-02-2020','DD-MM-YYYY'),0,1,8,2,4);
INSERT INTO Partido VALUES (16,TO_DATE('10-02-2020','DD-MM-YYYY'),3,4,8,3,5);

INSERT INTO Partido VALUES (17,TO_DATE('06-03-2020','DD-MM-YYYY'),0,2,9,5,2);
INSERT INTO Partido VALUES (18,TO_DATE('07-03-2020','DD-MM-YYYY'),3,1,9,4,3);

INSERT INTO Partido VALUES (19,TO_DATE('10-04-2020','DD-MM-YYYY'),0,3,10,3,2);
INSERT INTO Partido VALUES (20,TO_DATE('12-04-2020','DD-MM-YYYY'),3,3,10,5,4);

INSERT INTO Partido VALUES (21,TO_DATE('16-05-2019','DD-MM-YYYY'),0,0,11,4,2);
INSERT INTO Partido VALUES (22,TO_DATE('13-06-2019','DD-MM-YYYY'),0,1,11,5,3);

COMMIT;

COLUMN liga FORMAT 9 JUSTIFY CENTER
COLUMN nombre FORMAT A10 JUSTIFY CENTER
COLUMN fecha_inicio FORMAT A10 JUSTIFY CENTER
COLUMN fecha_fin FORMAT A10 JUSTIFY CENTER
SELECT * FROM LIGA;
COLUMN partido FORMAT 99 JUSTIFY CENTER
COLUMN fecha FORMAT A15 JUSTIFY CENTER
COLUMN goles_local FORMAT 99 JUSTIFY CENTER
COLUMN goles_visita FORMAT 99 JUSTIFY CENTER
COLUMN Jornada_jornada FORMAT 99 JUSTIFY CENTER
COLUMN Equipo_equipo FORMAT 99 JUSTIFY CENTER
COLUMN Equipo_equipo1 FORMAT 99 JUSTIFY CENTER
SELECT * FROM PARTIDO;
COLUMN equipo FORMAT 99 JUSTIFY CENTER
COLUMN nombre FORMAT A23 JUSTIFY CENTER
SELECT * FROM EQUIPO;
COLUMN jugador FORMAT 99 JUSTIFY CENTER
COLUMN nombre FORMAT A28 JUSTIFY CENTER
COLUMN goles FORMAT 99 JUSTIFY CENTER
COLUMN Equipo_equipo FORMAT 99 JUSTIFY CENTER
SELECT * FROM JUGADOR;
COLUMN jornada FORMAT 99 JUSTIFY CENTER
COLUMN numero FORMAT 99 JUSTIFY CENTER
COLUMN Liga_liga FORMAT 99 JUSTIFY CENTER
SELECT * FROM JORNADA;
EXIT;