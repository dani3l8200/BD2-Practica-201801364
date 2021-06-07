/* CREACION USUARIOS */

/* USUARIOS GUEST */
CREATE USER guest1 IDENTIFIED BY guest1;
CREATE USER guest2 IDENTIFIED BY guest2;
CREATE USER guest3 IDENTIFIED BY guest3;

/* USUARIOS MESAS */
CREATE USER mesas1 IDENTIFIED BY mesas1;
CREATE USER mesas2 IDENTIFIED BY mesas2;
CREATE USER mesas3 IDENTIFIED BY mesas3;
CREATE USER mesas4 IDENTIFIED BY mesas4;

/* USUARIOS IT */
CREATE USER it1 IDENTIFIED BY it1;
CREATE USER it2 IDENTIFIED BY it2;
CREATE USER it3 IDENTIFIED BY it3;

/* USUARIOS ADMIN */
CREATE USER admin1 IDENTIFIED BY admin1;
CREATE USER admin2 IDENTIFIED BY admin2;

/* CREACION ROLES */
CREATE ROLE GUEST;
CREATE ROLE MESAS;
CREATE ROLE IT;
CREATE ROLE ADMIN;
SELECT * FROM  DBA_ROLES;
/* ROL DE GUEST */
GRANT SELECT ANY TABLE, CREATE ANY VIEW,
CONNECT TO GUEST;
/* ROL DE MESAS */
GRANT SELECT ANY TABLE, INSERT ANY TABLE,
CONNECT TO MESAS;
/* ROL DE IT */
GRANT SELECT ANY TABLE, CREATE ANY TABLE,
CREATE USER, CONNECT TO IT;
/* ROL DE ADMIN */
GRANT UPDATE ANY TABLE, INSERT ANY TABLE, 
SELECT ANY TABLE, DELETE ANY TABLE,
CREATE USER, CONNECT TO ADMIN;

/* ASIGNACION ROLES A USUARIOS */ 
GRANT GUEST TO guest1, guest2, guest3;
GRANT MESAS TO mesas1, mesas2, mesas3, mesas4;
GRANT IT TO it1, it2, it3;
GRANT ADMIN TO admin1, admin2;