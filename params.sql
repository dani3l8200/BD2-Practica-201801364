--- SGA ---
ALTER SYSTEM SET MEMORY_TARGET=0  SCOPE=SPFILE;
ALTER SYSTEM SET SGA_MAX_SIZE=9000M SCOPE=SPFILE;
ALTER SYSTEM SET SGA_TARGET=560M SCOPE=SPFILE;
SELECT * FROM V$MEMORY_DYNAMIC_COMPONENTS;
SELECT * FROM V$MEMORY_RESIZE_OPS;


/*processes = 1500
SESSIONS = (1.5 * PROCESSES) + 22
SESSIONS = (1.5 * 1500) + 22
SESSIONS  = 2272
TRANSACTIONS = 1.1*2272 = 2500
*/

---- PROCESSES AND SESSIONS
alter system set processes=1500 scope=spfile;
alter system set sessions=2272 scope=spfile;
alter system set transactions = 2500 scope = spfile;
shutdown immediate;
startup;
COLUMN NAME FORMAT A20
COLUMN VALUE FORMAT A20

---- PGA
SHOW PARAMETER PGA;
SELECT * FROM V$PGASTAT;
SHOW PARAMETER AREA_SIZE;
ALTER SYSTEM SET PGA_AGGREGATE_TARGET=100M;

--- SHOW RESULTS
select name, value from v$parameter where name in ('processes','sessions','transactions')
UNION 
select name, TO_CHAR(((value/1024)/1024)) from v$parameter where name in ('sga_target')
UNION 
select 'PGA'  name, TO_CHAR(((value/1024)/1024)) from V$PGASTAT where name ='aggregate PGA target parameter';