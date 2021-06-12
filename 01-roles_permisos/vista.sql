CREATE VIEW VOTOSPRESIDENTE AS 
SELECT muni.nombre_muni municipio, 
depa.nombre_depto departamento, par.nombre_part partido,  SUM(ELECCIONES.voto.voto_cantidad) "No. VOTOS" FROM ELECCIONES.VOTO
INNER JOIN ELECCIONES.PARTIDO par on ELECCIONES.voto.voto_partido = par.codigo_part
INNER JOIN ELECCIONES.ELECCION elec on ELECCIONES.voto.voto_eleccion = elec.codigo_ele
INNER JOIN ELECCIONES.ACTA on ELECCIONES.voto.voto_mesa = ELECCIONES.acta.numero_mesa and ELECCIONES.acta.tipo_eleccion = elec.codigo_ele
INNER JOIN ELECCIONES.MUNICIPIO  muni on ELECCIONES.acta.municipio = muni.codigo_muni and ELECCIONES.acta.departamento = muni.depto_muni
INNER JOIN ELECCIONES.DEPARTAMENTO depa on muni.depto_muni = depa.codigo_depto
WHERE elec.nombre_ele = 'Presidente'
GROUP BY par.nombre_part, elec.nombre_ele, muni.nombre_muni, depa.nombre_depto;

COLUMN municipio FORMAT A20
COLUMN DEPARTAMENTO FORMAT A15
COLUMN PARTIDO FORMAT A10
COLUMN "No. VOTOS" FORMAT 999
SELECT * FROM VOTOSPRESIDENTE;

exit;


CREATE VIEW VOTOSPRESIDENTE AS 
SELECT * FROM ELECCIONES.DEPARTAMENTO;
SELECT ELECCIONES.PARTIDO.nombre_part FROM ELECCIONES.VOTO, ELECCIONES.PARTIDO
WHERE ELECCIONES.PARTIDO.codigo_part = ELECCIONES.voto.voto_partido;
INNER JOIN ELECCIONES.PARTIDO on ELECCIONES.voto.voto_partido = ELECCIONES.partido.codigo_part;