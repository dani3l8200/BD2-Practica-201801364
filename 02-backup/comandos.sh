sqlplus -s -l futbol/futbol @"/bbdd/practica/backup/backup_carga.sql" >> "/bbdd/practica/backup/carga.txt"
sqlplus -s -l futbol/futbol @"/bbdd/practica/backup/backup_drop.sql" >> "/bbdd/practica/backup/droppeo.txt"
sqlplus -s -l elecciones/elecciones @"/bbdd/practica/autenticacion/ddl.sql" >> "/bbdd/practica/autenticacion/carga.txt"
sqlplus -s -l elecciones/elecciones @"/bbdd/practica/autenticacion/droppeo.sql" >> "/bbdd/practica/autenticacion/drop.txt"
sqlplus -s -l elecciones/elecciones @"/bbdd/practica/autenticacion/put_data.sql" >> "/bbdd/practica/autenticacion/put_data.txt"
expdp futbol/futbol parfile=futbol_equipos.par
expdp futbol/futbol parfile=futbol_jornadas.par
impdp futbol/futbol parfile=jornadas.par 
impdp futbol/futbol parfile=equipos.par
