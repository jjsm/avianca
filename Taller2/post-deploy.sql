

-------------------------- CAMBIO DE LAS FECHAS PARA UNA MAS REAL (EVITAS VIAJES AL PASADO :P)---------------------------------------------------------
alter session set NLS_DATE_FORMAT='DD-MON-YYYY HH:MI:SS PM';
MERGE
INTO    ITINERARIOS trg
USING   (
            SELECT DISTINCT (ITINERARIOS.FECHA_SALIDA_ESTIMADA + (RUTAS.CANTIDAD_PROMEDIO_HORAS/24)) "FECHA_TO_ACTUALIZAR",
            ITINERARIOS.ID "ID_ITINERARIO",
            RUTAS.CANTIDAD_PROMEDIO_HORAS "DURACION_VUELO"
            FROM ITINERARIOS 
            INNER JOIN VUELOS ON ITINERARIOS.VUELO_ID = VUELOS.ID
            INNER JOIN RUTAS ON RUTAS.ID = VUELOS.RUTA_ID
        ) src
ON (trg.ID = src."ID_ITINERARIO")
WHEN MATCHED THEN UPDATE
SET trg.FECHA_LLEGADA_ESTIMADA = src."FECHA_TO_ACTUALIZAR",
trg.FECHA_LLEGADA_REAL = src."FECHA_TO_ACTUALIZAR",
trg.FECHA_SALIDA_REAL = trg.FECHA_SALIDA_ESTIMADA,
trg.duracion_real = src."DURACION_VUELO";

--------------------------------------------------------------------------------------
UPDATE rutas SET aeropuerto_origen_id =8039 WHERE ID = 9000;
UPDATE rutas SET aeropuerto_origen_id =8031 WHERE ID = 9001;
UPDATE rutas SET aeropuerto_origen_id =8045 WHERE ID = 9002;
UPDATE rutas SET aeropuerto_origen_id =8077 WHERE ID = 9003;
UPDATE rutas SET aeropuerto_origen_id =8036 WHERE ID = 9004;
UPDATE rutas SET aeropuerto_origen_id =8008 WHERE ID = 9005;
UPDATE rutas SET aeropuerto_origen_id =8051 WHERE ID = 9006;
UPDATE rutas SET aeropuerto_origen_id =8097 WHERE ID = 9007;
UPDATE rutas SET aeropuerto_origen_id =8012 WHERE ID = 9008;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9009;
UPDATE rutas SET aeropuerto_origen_id =8014 WHERE ID = 9010;
UPDATE rutas SET aeropuerto_origen_id =8034 WHERE ID = 9011;
UPDATE rutas SET aeropuerto_origen_id =8055 WHERE ID = 9012;
UPDATE rutas SET aeropuerto_origen_id =8079 WHERE ID = 9013;
UPDATE rutas SET aeropuerto_origen_id =8006 WHERE ID = 9014;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9015;
UPDATE rutas SET aeropuerto_origen_id =8051 WHERE ID = 9016;
UPDATE rutas SET aeropuerto_origen_id =8002 WHERE ID = 9017;
UPDATE rutas SET aeropuerto_origen_id =8063 WHERE ID = 9018;
UPDATE rutas SET aeropuerto_origen_id =8067 WHERE ID = 9019;
UPDATE rutas SET aeropuerto_origen_id =8094 WHERE ID = 9020;
UPDATE rutas SET aeropuerto_origen_id =8018 WHERE ID = 9021;
UPDATE rutas SET aeropuerto_origen_id =8025 WHERE ID = 9022;
UPDATE rutas SET aeropuerto_origen_id =8033 WHERE ID = 9023;
UPDATE rutas SET aeropuerto_origen_id =8015 WHERE ID = 9024;
UPDATE rutas SET aeropuerto_origen_id =8076 WHERE ID = 9025;
UPDATE rutas SET aeropuerto_origen_id =8061 WHERE ID = 9026;
UPDATE rutas SET aeropuerto_origen_id =8048 WHERE ID = 9027;
UPDATE rutas SET aeropuerto_origen_id =8083 WHERE ID = 9028;
UPDATE rutas SET aeropuerto_origen_id =8052 WHERE ID = 9029;
UPDATE rutas SET aeropuerto_origen_id =8014 WHERE ID = 9030;
UPDATE rutas SET aeropuerto_origen_id =8094 WHERE ID = 9031;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9032;
UPDATE rutas SET aeropuerto_origen_id =8031 WHERE ID = 9033;
UPDATE rutas SET aeropuerto_origen_id =8022 WHERE ID = 9034;
UPDATE rutas SET aeropuerto_origen_id =8083 WHERE ID = 9035;
UPDATE rutas SET aeropuerto_origen_id =8094 WHERE ID = 9036;
UPDATE rutas SET aeropuerto_origen_id =8081 WHERE ID = 9037;
UPDATE rutas SET aeropuerto_origen_id =8025 WHERE ID = 9038;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9039;
UPDATE rutas SET aeropuerto_origen_id =8046 WHERE ID = 9040;
UPDATE rutas SET aeropuerto_origen_id =8068 WHERE ID = 9041;
UPDATE rutas SET aeropuerto_origen_id =8050 WHERE ID = 9042;
UPDATE rutas SET aeropuerto_origen_id =8071 WHERE ID = 9043;
UPDATE rutas SET aeropuerto_origen_id =8084 WHERE ID = 9044;
UPDATE rutas SET aeropuerto_origen_id =8078 WHERE ID = 9045;
UPDATE rutas SET aeropuerto_origen_id =8079 WHERE ID = 9046;
UPDATE rutas SET aeropuerto_origen_id =8006 WHERE ID = 9047;
UPDATE rutas SET aeropuerto_origen_id =8053 WHERE ID = 9048;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9049;
UPDATE rutas SET aeropuerto_origen_id =8096 WHERE ID = 9050;
UPDATE rutas SET aeropuerto_origen_id =8016 WHERE ID = 9051;
UPDATE rutas SET aeropuerto_origen_id =8025 WHERE ID = 9052;
UPDATE rutas SET aeropuerto_origen_id =8052 WHERE ID = 9053;
UPDATE rutas SET aeropuerto_origen_id =8030 WHERE ID = 9054;
UPDATE rutas SET aeropuerto_origen_id =8010 WHERE ID = 9055;
UPDATE rutas SET aeropuerto_origen_id =8018 WHERE ID = 9056;
UPDATE rutas SET aeropuerto_origen_id =8068 WHERE ID = 9057;
UPDATE rutas SET aeropuerto_origen_id =8014 WHERE ID = 9058;
UPDATE rutas SET aeropuerto_origen_id =8034 WHERE ID = 9059;
UPDATE rutas SET aeropuerto_origen_id =8025 WHERE ID = 9060;
UPDATE rutas SET aeropuerto_origen_id =8089 WHERE ID = 9061;
UPDATE rutas SET aeropuerto_origen_id =8044 WHERE ID = 9062;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9063;
UPDATE rutas SET aeropuerto_origen_id =8072 WHERE ID = 9064;
UPDATE rutas SET aeropuerto_origen_id =8089 WHERE ID = 9065;
UPDATE rutas SET aeropuerto_origen_id =8071 WHERE ID = 9066;
UPDATE rutas SET aeropuerto_origen_id =8034 WHERE ID = 9067;
UPDATE rutas SET aeropuerto_origen_id =8057 WHERE ID = 9068;
UPDATE rutas SET aeropuerto_origen_id =8064 WHERE ID = 9069;
UPDATE rutas SET aeropuerto_origen_id =8062 WHERE ID = 9070;
UPDATE rutas SET aeropuerto_origen_id =8078 WHERE ID = 9071;
UPDATE rutas SET aeropuerto_origen_id =8017 WHERE ID = 9072;
UPDATE rutas SET aeropuerto_origen_id =8067 WHERE ID = 9073;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9074;
UPDATE rutas SET aeropuerto_origen_id =8051 WHERE ID = 9075;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9076;
UPDATE rutas SET aeropuerto_origen_id =8056 WHERE ID = 9077;
UPDATE rutas SET aeropuerto_origen_id =8038 WHERE ID = 9078;
UPDATE rutas SET aeropuerto_origen_id =8095 WHERE ID = 9079;
UPDATE rutas SET aeropuerto_origen_id =8008 WHERE ID = 9080;
UPDATE rutas SET aeropuerto_origen_id =8060 WHERE ID = 9081;
UPDATE rutas SET aeropuerto_origen_id =8058 WHERE ID = 9082;
UPDATE rutas SET aeropuerto_origen_id =8037 WHERE ID = 9083;
UPDATE rutas SET aeropuerto_origen_id =8005 WHERE ID = 9084;
UPDATE rutas SET aeropuerto_origen_id =8019 WHERE ID = 9085;
UPDATE rutas SET aeropuerto_origen_id =8075 WHERE ID = 9086;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9087;
UPDATE rutas SET aeropuerto_origen_id =8039 WHERE ID = 9088;
UPDATE rutas SET aeropuerto_origen_id =8080 WHERE ID = 9089;
UPDATE rutas SET aeropuerto_origen_id =8073 WHERE ID = 9090;
UPDATE rutas SET aeropuerto_origen_id =8001 WHERE ID = 9091;
UPDATE rutas SET aeropuerto_origen_id =8051 WHERE ID = 9092;
UPDATE rutas SET aeropuerto_origen_id =8012, aeropuerto_destino_id = 8080 WHERE ID = 9093;
UPDATE rutas SET aeropuerto_origen_id =8090, aeropuerto_destino_id = 8080 WHERE ID = 9094;
UPDATE rutas SET aeropuerto_origen_id =8094, aeropuerto_destino_id = 8080 WHERE ID = 9095;
UPDATE rutas SET aeropuerto_origen_id =8051, aeropuerto_destino_id = 8080 WHERE ID = 9096;
UPDATE rutas SET aeropuerto_origen_id =8049, aeropuerto_destino_id = 8080 WHERE ID = 9097;
UPDATE rutas SET aeropuerto_origen_id =8076, aeropuerto_destino_id = 8080 WHERE ID = 9098;
UPDATE rutas SET aeropuerto_origen_id =8058, aeropuerto_destino_id = 8080 WHERE ID = 9099;




UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11999;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11998;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11997;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11996;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11995;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11994;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11993;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11992;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11991;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11990;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11989;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11988;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11987;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11986;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11985;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11984;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11983;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11982;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11981;
UPDATE VUELOS SET RUTA_ID = (select round(dbms_random.value(9093, 9099)) + 1 from dual) WHERE ID = 11980;

COMMIT WORK;

INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50000,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50001,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50002,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50003,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50004,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50005,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50006,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50007,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50008,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50009,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50010,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50011,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50012,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50013,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50014,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50015,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50016,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50017,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50018,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50019,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');
INSERT INTO itinerarios (id,vuelo_id,fecha_salida_estimada,fecha_llegada_estimada,fecha_salida_real,fecha_llegada_real,duracion_real,PASAJEROS_ECONOMICA,avion_id,piloto_id,copiloto_id,PASAJEROS_EJECUTIVA,estado) VALUES (50020,(select round(dbms_random.value(10000, 11999)) from dual),null,null,null,null,null,null,null,null,null,null,'Programado');



COMMIT WORK;

CREATE OR REPLACE VIEW GET_VUELOS_NOT_CONFIRMADOS AS
SELECT ITINERARIOS.ID "ITINERARIO_ID",
ITINERARIOS.AVION_ID "AVION_ID",
ITINERARIOS.ESTADO "ESTADO_VUELO",
ITINERARIOS.FECHA_SALIDA_ESTIMADA "FECHA_SALIDA_VUELO", 
ITINERARIOS.FECHA_LLEGADA_ESTIMADA "FECHA_LLEGADA_VUELO",
RUTAS.CANTIDAD_PROMEDIO_HORAS "PROMEDIO_HORAS_VUELO",
VUELOS.NUMERO_VUELO "NUMERO_VUELO",
ITINERARIOS.PASAJEROS_ECONOMICA "NUMERO_PASAJEROS_ECONOMICA",
ITINERARIOS.PASAJEROS_EJECUTIVA "NUMERO_PASAJEROS_EJECUTIVA",
AEROPUERTOS_ORIGEN.ID "AEROPUERTO_ORIGEN_ID",
AEROPUERTOS_ORIGEN.NOMBRE "AEROPUERTO_ORIGEN",
AEROPUERTOS_ORIGEN.CIUDAD "CIUDAD_ORIGEN",
AEROPUERTOS_DESTINO.ID "AEROPUERTO_DESTINO_ID",
AEROPUERTOS_DESTINO.NOMBRE "AEROPUERTO_DESTINO",
AEROPUERTOS_DESTINO.CIUDAD "CIUDAD_DESTINO",
AVIONES.ESTADO "AVION_ESTADO",
MODELOS_AVIONES.CAPACIDAD_EJECUTIVA "AVION_CAPACIDAD_EJECUTIVA",
MODELOS_AVIONES.CAPACIDAD_ECONOMICA "AVION_CAPACIDAD_ECONOMICA"
FROM ITINERARIOS
INNER JOIN VUELOS ON ITINERARIOS.VUELO_ID = VUELOS.ID
INNER JOIN RUTAS ON RUTAS.ID = VUELOS.RUTA_ID
INNER JOIN AEROPUERTOS AEROPUERTOS_ORIGEN ON RUTAS.AEROPUERTO_ORIGEN_ID = AEROPUERTOS_ORIGEN.ID
INNER JOIN AEROPUERTOS AEROPUERTOS_DESTINO ON RUTAS.AEROPUERTO_DESTINO_ID = AEROPUERTOS_DESTINO.ID
LEFT OUTER JOIN AVIONES ON AVIONES.ID = ITINERARIOS.AVION_ID
LEFT OUTER JOIN MODELOS_AVIONES ON AVIONES.MODELO_AVION_ID = MODELOS_AVIONES.ID
WHERE ITINERARIOS.ESTADO IN ('Vuelo', 'Cancelado', 'Retrasado', 'Abordando')
ORDER BY ITINERARIOS.FECHA_LLEGADA_ESTIMADA DESC;

MERGE
INTO    ITINERARIOS trg
USING   (
            SELECT ITINERARIO_ID, 'Confirmado' "ESTADO" FROM GET_VUELOS_NOT_CONFIRMADOS WHERE AEROPUERTO_ORIGEN_ID = 8080 AND ROWNUM < = 20
        ) src
ON (trg.ID = src.ITINERARIO_ID)
WHEN MATCHED THEN UPDATE
SET trg.ESTADO = src."ESTADO";


MERGE
INTO    ITINERARIOS trg
USING   (
            SELECT DISTINCT (SELECT SYSDATE FROM DUAL) "FECHA_SALIDA_ESTIMADA",
            ((SELECT SYSDATE FROM DUAL) + (RUTAS.CANTIDAD_PROMEDIO_HORAS/24)) "FECHA_TO_ACTUALIZAR",            
            ITINERARIOS.ID "ID_ITINERARIO",
            RUTAS.CANTIDAD_PROMEDIO_HORAS "DURACION_VUELO"
            FROM ITINERARIOS 
            INNER JOIN VUELOS ON ITINERARIOS.VUELO_ID = VUELOS.ID
            INNER JOIN RUTAS ON RUTAS.ID = VUELOS.RUTA_ID
            WHERE ITINERARIOS.AVION_ID IS NULL
        ) src
ON (trg.ID = src."ID_ITINERARIO")
WHEN MATCHED THEN UPDATE
SET trg.FECHA_LLEGADA_ESTIMADA = src."FECHA_TO_ACTUALIZAR",
trg.FECHA_LLEGADA_REAL = src."FECHA_TO_ACTUALIZAR",
trg.FECHA_SALIDA_ESTIMADA = src."FECHA_SALIDA_ESTIMADA",
trg.FECHA_SALIDA_REAL = src."FECHA_SALIDA_ESTIMADA",
trg.duracion_real = src."DURACION_VUELO";

CREATE OR REPLACE PROCEDURE ORGANIZAR_FECHAS_VUELOS AS 
    ROW_COUNT NUMBER;
    FECHA_LLEG_TO_UP ITINERARIOS.FECHA_SALIDA_ESTIMADA%TYPE; 
    ROUND_ROWS NUMBER;
BEGIN
    SELECT DISTINCT COUNT(*) INTO ROW_COUNT
    FROM GET_VUELOS_CONFIRMADOS WHERE AEROPUERTO_DESTINO_ID IN(SELECT AEROPUERTO_ORIGEN_ID FROM GET_VUELOS_CONFIRMADOS WHERE ITINERARIO_ID BETWEEN 50000 AND 50021);
    SELECT FECHA_SALIDA_VUELO INTO FECHA_LLEG_TO_UP FROM GET_VUELOS_CONFIRMADOS WHERE ITINERARIO_ID = 50000;
    
    ROUND_ROWS := ROUND(ROW_COUNT/5); 
    
    FOR D IN 0..ROUND_ROWS LOOP
                    
                    MERGE
                    INTO ITINERARIOS trg
                    USING (
                        SELECT DISTINCT OU_AE.ITINERARIO_ID "ID_ITINERARIO"
                        ,(FECHA_LLEG_TO_UP + ((select round(dbms_random.value(-10, -2)) + 1 from dual)/24)) "FECHA_LLEG_ACTUA_",
                        ((FECHA_LLEG_TO_UP + ((select round(dbms_random.value(-10, -2)) + 1 from dual)/24)) -
                        (OU_AE.PROMEDIO_HORAS_VUELO/24)) "FECHA_SALI_TO_UP"
                        FROM GET_VUELOS_CONFIRMADOS OU_AE WHERE OU_AE.AEROPUERTO_DESTINO_ID IN(SELECT IN_AE.AEROPUERTO_ORIGEN_ID FROM 
                        GET_VUELOS_CONFIRMADOS IN_AE WHERE IN_AE.ITINERARIO_ID BETWEEN 50000 AND 50021)
                        ORDER BY OU_AE.ITINERARIO_ID
                        OFFSET D ROWS FETCH NEXT 1 ROWS ONLY
                    )src
                    ON (trg.ID = src."ID_ITINERARIO")
                    WHEN MATCHED THEN 
                    UPDATE SET trg.FECHA_LLEGADA_ESTIMADA = src."FECHA_LLEG_ACTUA_",
                           trg.FECHA_LLEGADA_REAL = src."FECHA_LLEG_ACTUA_",
                           trg.FECHA_SALIDA_ESTIMADA = src."FECHA_SALI_TO_UP",
                           trg.FECHA_SALIDA_REAL = src."FECHA_SALI_TO_UP";                                     
                                    
    END LOOP;
    
    DBMS_OUTPUT.put_line(ROW_COUNT || ' '  || FECHA_LLEG_TO_UP || ' ' || ROUND_ROWS);
END;



UPDATE empleados SET UBICACION_ACTUAL='LAUNION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1199; 
UPDATE empleados SET UBICACION_ACTUAL='CAICEDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1200; 
UPDATE empleados SET UBICACION_ACTUAL='NECHI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1201; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1202; 
UPDATE empleados SET UBICACION_ACTUAL='ARBOLETES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1203; 
UPDATE empleados SET UBICACION_ACTUAL='RIONEGRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1204; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1205; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1206; 
UPDATE empleados SET UBICACION_ACTUAL='CARACOLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1207; 
UPDATE empleados SET UBICACION_ACTUAL='ANGOSTURA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1208; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1209; 
UPDATE empleados SET UBICACION_ACTUAL='BETULIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1210; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1211; 
UPDATE empleados SET UBICACION_ACTUAL='ARMENIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1212; 
UPDATE empleados SET UBICACION_ACTUAL='HISPANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1213; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1214; 
UPDATE empleados SET UBICACION_ACTUAL='CAUCASIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1215; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1216; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1217; 
UPDATE empleados SET UBICACION_ACTUAL='LAUNION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1218; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTONARE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1219; 
UPDATE empleados SET UBICACION_ACTUAL='ELBAGRE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1220; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1221; 
UPDATE empleados SET UBICACION_ACTUAL='JERICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1222; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1223; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1224; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1225; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1226; 
UPDATE empleados SET UBICACION_ACTUAL='ELBAGRE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1227; 
UPDATE empleados SET UBICACION_ACTUAL='SANROQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1228; 
UPDATE empleados SET UBICACION_ACTUAL='SALGAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1229; 
UPDATE empleados SET UBICACION_ACTUAL='BELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1230; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1231; 
UPDATE empleados SET UBICACION_ACTUAL='CALDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1232; 
UPDATE empleados SET UBICACION_ACTUAL='SABANALARGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1233; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1234; 
UPDATE empleados SET UBICACION_ACTUAL='CALDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1235; 
UPDATE empleados SET UBICACION_ACTUAL='CAMPAMENTO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1236; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1237; 
UPDATE empleados SET UBICACION_ACTUAL='ENVIGADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1238; 
UPDATE empleados SET UBICACION_ACTUAL='ARBOLETES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1239; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1240; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1241; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1242; 
UPDATE empleados SET UBICACION_ACTUAL='SANFRANCISCO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1243; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1244; 
UPDATE empleados SET UBICACION_ACTUAL='CALDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1245; 
UPDATE empleados SET UBICACION_ACTUAL='SANJUANDEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1246; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1247; 
UPDATE empleados SET UBICACION_ACTUAL='ALEJANDRIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1248; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOBERRIO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1249; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1250; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1251; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOTRIUNFO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1252; 
UPDATE empleados SET UBICACION_ACTUAL='CAUCASIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1253; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1254; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1255; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1256; 
UPDATE empleados SET UBICACION_ACTUAL='BELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1257; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1258; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1259; 
UPDATE empleados SET UBICACION_ACTUAL='SANLUIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1260; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1261; 
UPDATE empleados SET UBICACION_ACTUAL='BELMIRA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1262; 
UPDATE empleados SET UBICACION_ACTUAL='CARACOLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1263; 
UPDATE empleados SET UBICACION_ACTUAL='ALEJANDRIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1264; 
UPDATE empleados SET UBICACION_ACTUAL='LAPINTADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1265; 
UPDATE empleados SET UBICACION_ACTUAL='NARIÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1266; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1267; 
UPDATE empleados SET UBICACION_ACTUAL='BRICEÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1268; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1269; 
UPDATE empleados SET UBICACION_ACTUAL='BARBOSA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1270; 
UPDATE empleados SET UBICACION_ACTUAL='ITAGUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1271; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1272; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1273; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1274; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1275; 
UPDATE empleados SET UBICACION_ACTUAL='HISPANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1276; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1277; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1278; 
UPDATE empleados SET UBICACION_ACTUAL='CAMPAMENTO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1279; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1280; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1281; 
UPDATE empleados SET UBICACION_ACTUAL='CALDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1282; 
UPDATE empleados SET UBICACION_ACTUAL='CACERES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1283; 
UPDATE empleados SET UBICACION_ACTUAL='GIRARDOTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1284; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1285; 
UPDATE empleados SET UBICACION_ACTUAL='REMEDIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1286; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1287; 
UPDATE empleados SET UBICACION_ACTUAL='SANTAFEDEANTIOQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1376; 
UPDATE empleados SET UBICACION_ACTUAL='NECHI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1377; 
UPDATE empleados SET UBICACION_ACTUAL='BARBOSA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1378; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1379; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1380; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1381; 
UPDATE empleados SET UBICACION_ACTUAL='BRICEÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1382; 
UPDATE empleados SET UBICACION_ACTUAL='ELCARMENDEVIBORAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1383; 
UPDATE empleados SET UBICACION_ACTUAL='MURINDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1384; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1385; 
UPDATE empleados SET UBICACION_ACTUAL='SANLUIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1386; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1387; 
UPDATE empleados SET UBICACION_ACTUAL='CAICEDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1388; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1389; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1390; 
UPDATE empleados SET UBICACION_ACTUAL='RIONEGRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1391; 
UPDATE empleados SET UBICACION_ACTUAL='SANRAFAEL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1392; 
UPDATE empleados SET UBICACION_ACTUAL='SANFRANCISCO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1393; 
UPDATE empleados SET UBICACION_ACTUAL='JARDIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1394; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1395; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1396; 
UPDATE empleados SET UBICACION_ACTUAL='NARIÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1397; 
UPDATE empleados SET UBICACION_ACTUAL='REMEDIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1398; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1399; 
UPDATE empleados SET UBICACION_ACTUAL='SANVICENTE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1400; 
UPDATE empleados SET UBICACION_ACTUAL='MONTEBELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1401; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1402; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1403; 
UPDATE empleados SET UBICACION_ACTUAL='SALGAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1404; 
UPDATE empleados SET UBICACION_ACTUAL='MUTATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1405; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1406; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1407; 
UPDATE empleados SET UBICACION_ACTUAL='ARGELIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1408; 
UPDATE empleados SET UBICACION_ACTUAL='HISPANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1409; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1410; 
UPDATE empleados SET UBICACION_ACTUAL='ARGELIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1411; 
UPDATE empleados SET UBICACION_ACTUAL='BRICEÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1412; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1413; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1414; 
UPDATE empleados SET UBICACION_ACTUAL='CACERES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1415; 
UPDATE empleados SET UBICACION_ACTUAL='SABANALARGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1416; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1417; 
UPDATE empleados SET UBICACION_ACTUAL='SABANALARGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1288; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1289; 
UPDATE empleados SET UBICACION_ACTUAL='MACEO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1290; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1291; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1292; 
UPDATE empleados SET UBICACION_ACTUAL='GIRARDOTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1293; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOBERRIO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1294; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOBERRIO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1295; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1296; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1297; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1298; 
UPDATE empleados SET UBICACION_ACTUAL='SANRAFAEL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1299; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1300; 
UPDATE empleados SET UBICACION_ACTUAL='NARIÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1301; 
UPDATE empleados SET UBICACION_ACTUAL='SABANALARGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1302; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1303; 
UPDATE empleados SET UBICACION_ACTUAL='ANZA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1304; 
UPDATE empleados SET UBICACION_ACTUAL='LAUNION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1305; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1306; 
UPDATE empleados SET UBICACION_ACTUAL='SANLUIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1307; 
UPDATE empleados SET UBICACION_ACTUAL='CONCEPCION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1308; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1309; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1310; 
UPDATE empleados SET UBICACION_ACTUAL='CAMPAMENTO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1311; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1312; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1313; 
UPDATE empleados SET UBICACION_ACTUAL='NECOCLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1314; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1315; 
UPDATE empleados SET UBICACION_ACTUAL='MONTEBELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1316; 
UPDATE empleados SET UBICACION_ACTUAL='MUTATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1317; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1318; 
UPDATE empleados SET UBICACION_ACTUAL='GIRARDOTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1319; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1320; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1321; 
UPDATE empleados SET UBICACION_ACTUAL='CACERES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1322; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1323; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1324; 
UPDATE empleados SET UBICACION_ACTUAL='JARDIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1325; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1326; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1327; 
UPDATE empleados SET UBICACION_ACTUAL='REMEDIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1328; 
UPDATE empleados SET UBICACION_ACTUAL='CISNEROS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1329; 
UPDATE empleados SET UBICACION_ACTUAL='BELMIRA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1330; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1331; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1332; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1333; 
UPDATE empleados SET UBICACION_ACTUAL='NECOCLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1334; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1335; 
UPDATE empleados SET UBICACION_ACTUAL='MONTEBELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1336; 
UPDATE empleados SET UBICACION_ACTUAL='RIONEGRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1337; 
UPDATE empleados SET UBICACION_ACTUAL='ANZA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1338; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1339; 
UPDATE empleados SET UBICACION_ACTUAL='CONCEPCION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1340; 
UPDATE empleados SET UBICACION_ACTUAL='MACEO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1341; 
UPDATE empleados SET UBICACION_ACTUAL='SANJUANDEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1342; 
UPDATE empleados SET UBICACION_ACTUAL='ELCARMENDEVIBORAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1343; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1344; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1345; 
UPDATE empleados SET UBICACION_ACTUAL='ARBOLETES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1346; 
UPDATE empleados SET UBICACION_ACTUAL='CAUCASIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1347; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1348; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1349; 
UPDATE empleados SET UBICACION_ACTUAL='CAUCASIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1350; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1351; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1352; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1353; 
UPDATE empleados SET UBICACION_ACTUAL='CONCEPCION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1354; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1355; 
UPDATE empleados SET UBICACION_ACTUAL='NARIÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1356; 
UPDATE empleados SET UBICACION_ACTUAL='DONMATIAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1357; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1358; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1359; 
UPDATE empleados SET UBICACION_ACTUAL='BELMIRA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1360; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1361; 
UPDATE empleados SET UBICACION_ACTUAL='CAICEDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1362; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1363; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1364; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1365; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1366; 
UPDATE empleados SET UBICACION_ACTUAL='BELMIRA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1367; 
UPDATE empleados SET UBICACION_ACTUAL='MURINDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1368; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1369; 
UPDATE empleados SET UBICACION_ACTUAL='BRICEÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1370; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1371; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1372; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1373; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1374; 
UPDATE empleados SET UBICACION_ACTUAL='BELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1375; 
UPDATE empleados SET UBICACION_ACTUAL='MURINDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1418; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1419; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1420; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1421; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1422; 
UPDATE empleados SET UBICACION_ACTUAL='SANANDRESDECUERQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1423; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1424; 
UPDATE empleados SET UBICACION_ACTUAL='RIONEGRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1425; 
UPDATE empleados SET UBICACION_ACTUAL='JARDIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1426; 
UPDATE empleados SET UBICACION_ACTUAL='ARMENIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1427; 
UPDATE empleados SET UBICACION_ACTUAL='REMEDIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1428; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1429; 
UPDATE empleados SET UBICACION_ACTUAL='BETANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1430; 
UPDATE empleados SET UBICACION_ACTUAL='ARBOLETES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1431; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1432; 
UPDATE empleados SET UBICACION_ACTUAL='SANCARLOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1433; 
UPDATE empleados SET UBICACION_ACTUAL='BURITICA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1434; 
UPDATE empleados SET UBICACION_ACTUAL='ANZA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1435; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1436; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1437; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1438; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1439; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1440; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1441; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1442; 
UPDATE empleados SET UBICACION_ACTUAL='BRICEÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1443; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1444; 
UPDATE empleados SET UBICACION_ACTUAL='ARBOLETES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1445; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1446; 
UPDATE empleados SET UBICACION_ACTUAL='MACEO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1447; 
UPDATE empleados SET UBICACION_ACTUAL='NECOCLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1448; 
UPDATE empleados SET UBICACION_ACTUAL='SANRAFAEL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1449; 
UPDATE empleados SET UBICACION_ACTUAL='CAUCASIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1450; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1451; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1452; 
UPDATE empleados SET UBICACION_ACTUAL='LAUNION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1453; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1454; 
UPDATE empleados SET UBICACION_ACTUAL='SANCARLOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1455; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1456; 
UPDATE empleados SET UBICACION_ACTUAL='GRANADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1457; 
UPDATE empleados SET UBICACION_ACTUAL='ANZA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1458; 
UPDATE empleados SET UBICACION_ACTUAL='BRICEÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1459; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1460; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1461; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1462; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOTRIUNFO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1551; 
UPDATE empleados SET UBICACION_ACTUAL='JARDIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1552; 
UPDATE empleados SET UBICACION_ACTUAL='LAPINTADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1553; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1554; 
UPDATE empleados SET UBICACION_ACTUAL='MURINDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1555; 
UPDATE empleados SET UBICACION_ACTUAL='ITUANGO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1556; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOBERRIO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1557; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1558; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1559; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1560; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1561; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1562; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1563; 
UPDATE empleados SET UBICACION_ACTUAL='BETANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1564; 
UPDATE empleados SET UBICACION_ACTUAL='ARMENIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1565; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1566; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1567; 
UPDATE empleados SET UBICACION_ACTUAL='ENVIGADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1568; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1569; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1570; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1571; 
UPDATE empleados SET UBICACION_ACTUAL='LAPINTADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1572; 
UPDATE empleados SET UBICACION_ACTUAL='MACEO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1573; 
UPDATE empleados SET UBICACION_ACTUAL='NECHI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1574; 
UPDATE empleados SET UBICACION_ACTUAL='CAMPAMENTO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1575; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1576; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1577; 
UPDATE empleados SET UBICACION_ACTUAL='RETIRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1578; 
UPDATE empleados SET UBICACION_ACTUAL='BARBOSA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1579; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1580; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1581; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1582; 
UPDATE empleados SET UBICACION_ACTUAL='SANJUANDEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1583; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1584; 
UPDATE empleados SET UBICACION_ACTUAL='SANRAFAEL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1585; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1586; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1587; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1588; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1589; 
UPDATE empleados SET UBICACION_ACTUAL='REMEDIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1590; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1591; 
UPDATE empleados SET UBICACION_ACTUAL='ARBOLETES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1592; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1593; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1594; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1595; 
UPDATE empleados SET UBICACION_ACTUAL='CALDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1596; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1597; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1598; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1599; 
UPDATE empleados SET UBICACION_ACTUAL='CARACOLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1600; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1601; 
UPDATE empleados SET UBICACION_ACTUAL='RETIRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1602; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1603; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1604; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOTRIUNFO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1605; 
UPDATE empleados SET UBICACION_ACTUAL='RETIRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1606; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1607; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1608; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1609; 
UPDATE empleados SET UBICACION_ACTUAL='BURITICA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1610; 
UPDATE empleados SET UBICACION_ACTUAL='NECOCLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1611; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1612; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1613; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1614; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1615; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1616; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1617; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1618; 
UPDATE empleados SET UBICACION_ACTUAL='JERICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1619; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1620; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOBERRIO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1621; 
UPDATE empleados SET UBICACION_ACTUAL='LAUNION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1622; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1623; 
UPDATE empleados SET UBICACION_ACTUAL='EBEJICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1624; 
UPDATE empleados SET UBICACION_ACTUAL='CAROLINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1625; 
UPDATE empleados SET UBICACION_ACTUAL='SANVICENTE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1626; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1627; 
UPDATE empleados SET UBICACION_ACTUAL='CISNEROS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1628; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1629; 
UPDATE empleados SET UBICACION_ACTUAL='HISPANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1630; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1631; 
UPDATE empleados SET UBICACION_ACTUAL='GRANADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1632; 
UPDATE empleados SET UBICACION_ACTUAL='SANROQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1633; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1634; 
UPDATE empleados SET UBICACION_ACTUAL='JERICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1635; 
UPDATE empleados SET UBICACION_ACTUAL='GRANADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1636; 
UPDATE empleados SET UBICACION_ACTUAL='SANROQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1637; 
UPDATE empleados SET UBICACION_ACTUAL='LAUNION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1638; 
UPDATE empleados SET UBICACION_ACTUAL='MONTEBELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1639; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1640; 
UPDATE empleados SET UBICACION_ACTUAL='CISNEROS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1641; 
UPDATE empleados SET UBICACION_ACTUAL='ITUANGO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1642; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1643; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1644; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1645; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1646; 
UPDATE empleados SET UBICACION_ACTUAL='BARBOSA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1647; 
UPDATE empleados SET UBICACION_ACTUAL='GIRARDOTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1648; 
UPDATE empleados SET UBICACION_ACTUAL='BELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1649; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1650; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1651; 
UPDATE empleados SET UBICACION_ACTUAL='SANTAFEDEANTIOQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1652; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1653; 
UPDATE empleados SET UBICACION_ACTUAL='ELBAGRE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1654; 
UPDATE empleados SET UBICACION_ACTUAL='JERICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1655; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1656; 
UPDATE empleados SET UBICACION_ACTUAL='NARIÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1657; 
UPDATE empleados SET UBICACION_ACTUAL='GIRARDOTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1658; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1659; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1660; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOTRIUNFO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1661; 
UPDATE empleados SET UBICACION_ACTUAL='BURITICA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1662; 
UPDATE empleados SET UBICACION_ACTUAL='SANVICENTE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1663; 
UPDATE empleados SET UBICACION_ACTUAL='EBEJICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1664; 
UPDATE empleados SET UBICACION_ACTUAL='CAMPAMENTO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1665; 
UPDATE empleados SET UBICACION_ACTUAL='LAPINTADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1666; 
UPDATE empleados SET UBICACION_ACTUAL='CACERES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1667; 
UPDATE empleados SET UBICACION_ACTUAL='MONTEBELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1668; 
UPDATE empleados SET UBICACION_ACTUAL='SABANALARGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1669; 
UPDATE empleados SET UBICACION_ACTUAL='DONMATIAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1670; 
UPDATE empleados SET UBICACION_ACTUAL='BELMIRA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1671; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1672; 
UPDATE empleados SET UBICACION_ACTUAL='ELCARMENDEVIBORAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1673; 
UPDATE empleados SET UBICACION_ACTUAL='SANCARLOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1674; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1675; 
UPDATE empleados SET UBICACION_ACTUAL='HISPANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1676; 
UPDATE empleados SET UBICACION_ACTUAL='RIONEGRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1677; 
UPDATE empleados SET UBICACION_ACTUAL='NECHI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1678; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1679; 
UPDATE empleados SET UBICACION_ACTUAL='SANTAFEDEANTIOQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1680; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1681; 
UPDATE empleados SET UBICACION_ACTUAL='SANANDRESDECUERQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1682; 
UPDATE empleados SET UBICACION_ACTUAL='ENVIGADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1683; 
UPDATE empleados SET UBICACION_ACTUAL='SANCARLOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1684; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1685; 
UPDATE empleados SET UBICACION_ACTUAL='ANORI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1686; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1687; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1688; 
UPDATE empleados SET UBICACION_ACTUAL='RIONEGRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1689; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1690; 
UPDATE empleados SET UBICACION_ACTUAL='MACEO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1691; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1692; 
UPDATE empleados SET UBICACION_ACTUAL='JERICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1693; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1694; 
UPDATE empleados SET UBICACION_ACTUAL='GIRARDOTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1695; 
UPDATE empleados SET UBICACION_ACTUAL='ITUANGO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1696; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1697; 
UPDATE empleados SET UBICACION_ACTUAL='RIONEGRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1698; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1000; 
UPDATE empleados SET UBICACION_ACTUAL='SANANDRESDECUERQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1001; 
UPDATE empleados SET UBICACION_ACTUAL='HISPANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1002; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1003; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1004; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1005; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1006; 
UPDATE empleados SET UBICACION_ACTUAL='MUTATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1007; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1008; 
UPDATE empleados SET UBICACION_ACTUAL='BURITICA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1009; 
UPDATE empleados SET UBICACION_ACTUAL='ARMENIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1010; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1011; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1012; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1013; 
UPDATE empleados SET UBICACION_ACTUAL='SANLUIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1014; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1015; 
UPDATE empleados SET UBICACION_ACTUAL='CAROLINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1016; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1017; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1018; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1019; 
UPDATE empleados SET UBICACION_ACTUAL='RETIRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1020; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1021; 
UPDATE empleados SET UBICACION_ACTUAL='CAROLINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1022; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1023; 
UPDATE empleados SET UBICACION_ACTUAL='GUARNE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1024; 
UPDATE empleados SET UBICACION_ACTUAL='RETIRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1025; 
UPDATE empleados SET UBICACION_ACTUAL='SANFRANCISCO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1026; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1027; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1028; 
UPDATE empleados SET UBICACION_ACTUAL='BETULIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1029; 
UPDATE empleados SET UBICACION_ACTUAL='SANTAFEDEANTIOQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1030; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1031; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1032; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1033; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1034; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1035; 
UPDATE empleados SET UBICACION_ACTUAL='SALGAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1036; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1037; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1038; 
UPDATE empleados SET UBICACION_ACTUAL='BRICEÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1039; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1040; 
UPDATE empleados SET UBICACION_ACTUAL='ARGELIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1041; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1042; 
UPDATE empleados SET UBICACION_ACTUAL='ARBOLETES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1043; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1044; 
UPDATE empleados SET UBICACION_ACTUAL='DONMATIAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1045; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1046; 
UPDATE empleados SET UBICACION_ACTUAL='ARMENIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1047; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1048; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1049; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOTRIUNFO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1050; 
UPDATE empleados SET UBICACION_ACTUAL='CISNEROS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1051; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1052; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1053; 
UPDATE empleados SET UBICACION_ACTUAL='ARGELIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1054; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1055; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1056; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1057; 
UPDATE empleados SET UBICACION_ACTUAL='CONCEPCION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1058; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1059; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOTRIUNFO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1060; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1061; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1062; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOBERRIO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1063; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1064; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1065; 
UPDATE empleados SET UBICACION_ACTUAL='RETIRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1463; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1464; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1465; 
UPDATE empleados SET UBICACION_ACTUAL='CAMPAMENTO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1466; 
UPDATE empleados SET UBICACION_ACTUAL='REMEDIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1467; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1468; 
UPDATE empleados SET UBICACION_ACTUAL='NECHI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1469; 
UPDATE empleados SET UBICACION_ACTUAL='ANZA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1470; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1471; 
UPDATE empleados SET UBICACION_ACTUAL='SANLUIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1472; 
UPDATE empleados SET UBICACION_ACTUAL='SANROQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1473; 
UPDATE empleados SET UBICACION_ACTUAL='CARACOLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1474; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1475; 
UPDATE empleados SET UBICACION_ACTUAL='BARBOSA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1476; 
UPDATE empleados SET UBICACION_ACTUAL='DONMATIAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1477; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1478; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1479; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1480; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1481; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1482; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1483; 
UPDATE empleados SET UBICACION_ACTUAL='CARACOLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1484; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1485; 
UPDATE empleados SET UBICACION_ACTUAL='ARGELIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1486; 
UPDATE empleados SET UBICACION_ACTUAL='ARGELIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1487; 
UPDATE empleados SET UBICACION_ACTUAL='BURITICA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1488; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1489; 
UPDATE empleados SET UBICACION_ACTUAL='CISNEROS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1490; 
UPDATE empleados SET UBICACION_ACTUAL='BETANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1491; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1492; 
UPDATE empleados SET UBICACION_ACTUAL='SANVICENTE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1493; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1494; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1495; 
UPDATE empleados SET UBICACION_ACTUAL='BELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1496; 
UPDATE empleados SET UBICACION_ACTUAL='MUTATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1497; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1498; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1499; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1500; 
UPDATE empleados SET UBICACION_ACTUAL='SANRAFAEL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1501; 
UPDATE empleados SET UBICACION_ACTUAL='CALDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1502; 
UPDATE empleados SET UBICACION_ACTUAL='ENVIGADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1503; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1504; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1505; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1506; 
UPDATE empleados SET UBICACION_ACTUAL='REMEDIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1507; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1508; 
UPDATE empleados SET UBICACION_ACTUAL='SANANDRESDECUERQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1509; 
UPDATE empleados SET UBICACION_ACTUAL='SALGAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1510; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1511; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1512; 
UPDATE empleados SET UBICACION_ACTUAL='PUERTOBERRIO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1513; 
UPDATE empleados SET UBICACION_ACTUAL='SANROQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1514; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1515; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1516; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1517; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1518; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1519; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1520; 
UPDATE empleados SET UBICACION_ACTUAL='SANVICENTE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1521; 
UPDATE empleados SET UBICACION_ACTUAL='ENVIGADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1522; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1523; 
UPDATE empleados SET UBICACION_ACTUAL='CAROLINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1524; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1525; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1526; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1527; 
UPDATE empleados SET UBICACION_ACTUAL='JARDIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1528; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1529; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1530; 
UPDATE empleados SET UBICACION_ACTUAL='SALGAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1531; 
UPDATE empleados SET UBICACION_ACTUAL='CONCEPCION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1532; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1533; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1534; 
UPDATE empleados SET UBICACION_ACTUAL='BURITICA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1535; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1536; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1537; 
UPDATE empleados SET UBICACION_ACTUAL='MEDELLIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1538; 
UPDATE empleados SET UBICACION_ACTUAL='BETULIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1539; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1540; 
UPDATE empleados SET UBICACION_ACTUAL='CAICEDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1541; 
UPDATE empleados SET UBICACION_ACTUAL='ANGOSTURA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1542; 
UPDATE empleados SET UBICACION_ACTUAL='ABRIAQUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1543; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1544; 
UPDATE empleados SET UBICACION_ACTUAL='BETULIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1545; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1546; 
UPDATE empleados SET UBICACION_ACTUAL='SANANDRESDECUERQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1547; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1548; 
UPDATE empleados SET UBICACION_ACTUAL='SANCARLOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1549; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1550; 
UPDATE empleados SET UBICACION_ACTUAL='SANJUANDEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1146; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1147; 
UPDATE empleados SET UBICACION_ACTUAL='SALGAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1148; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1149; 
UPDATE empleados SET UBICACION_ACTUAL='GUARNE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1150; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1151; 
UPDATE empleados SET UBICACION_ACTUAL='SANJUANDEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1152; 
UPDATE empleados SET UBICACION_ACTUAL='NECOCLI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1153; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1154; 
UPDATE empleados SET UBICACION_ACTUAL='CONCEPCION'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1155; 
UPDATE empleados SET UBICACION_ACTUAL='JARDIN'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1156; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1157; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1158; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1159; 
UPDATE empleados SET UBICACION_ACTUAL='SANFRANCISCO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1160; 
UPDATE empleados SET UBICACION_ACTUAL='ENVIGADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1161; 
UPDATE empleados SET UBICACION_ACTUAL='ALEJANDRIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1162; 
UPDATE empleados SET UBICACION_ACTUAL='SANJERONIMO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1163; 
UPDATE empleados SET UBICACION_ACTUAL='GRANADA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1164; 
UPDATE empleados SET UBICACION_ACTUAL='EBEJICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1165; 
UPDATE empleados SET UBICACION_ACTUAL='BELMIRA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1166; 
UPDATE empleados SET UBICACION_ACTUAL='CARAMANTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1167; 
UPDATE empleados SET UBICACION_ACTUAL='GIRALDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1168; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1169; 
UPDATE empleados SET UBICACION_ACTUAL='DONMATIAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1170; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1171; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1172; 
UPDATE empleados SET UBICACION_ACTUAL='HISPANIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1173; 
UPDATE empleados SET UBICACION_ACTUAL='CACERES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1174; 
UPDATE empleados SET UBICACION_ACTUAL='GUADALUPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1175; 
UPDATE empleados SET UBICACION_ACTUAL='MACEO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1176; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1177; 
UPDATE empleados SET UBICACION_ACTUAL='SANANDRESDECUERQUIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1178; 
UPDATE empleados SET UBICACION_ACTUAL='LAESTRELLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1179; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1180; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1181; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1182; 
UPDATE empleados SET UBICACION_ACTUAL='COCORNA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1183; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1184; 
UPDATE empleados SET UBICACION_ACTUAL='BETULIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1185; 
UPDATE empleados SET UBICACION_ACTUAL='CACERES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1186; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1187; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1188; 
UPDATE empleados SET UBICACION_ACTUAL='FREDONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1189; 
UPDATE empleados SET UBICACION_ACTUAL='BETULIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1190; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1191; 
UPDATE empleados SET UBICACION_ACTUAL='AMAGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1192; 
UPDATE empleados SET UBICACION_ACTUAL='HELICONIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1193; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1194; 
UPDATE empleados SET UBICACION_ACTUAL='CAICEDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1195; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1196; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1197; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1198; 
UPDATE empleados SET UBICACION_ACTUAL='SANFRANCISCO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1066; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1067; 
UPDATE empleados SET UBICACION_ACTUAL='SANLUIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1068; 
UPDATE empleados SET UBICACION_ACTUAL='DONMATIAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1069; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1070; 
UPDATE empleados SET UBICACION_ACTUAL='ANZA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1071; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1072; 
UPDATE empleados SET UBICACION_ACTUAL='RETIRO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1073; 
UPDATE empleados SET UBICACION_ACTUAL='NARIÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1074; 
UPDATE empleados SET UBICACION_ACTUAL='ITAGUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1075; 
UPDATE empleados SET UBICACION_ACTUAL='PUEBLORRICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1076; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1077; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1078; 
UPDATE empleados SET UBICACION_ACTUAL='MUTATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1079; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1080; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1081; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1082; 
UPDATE empleados SET UBICACION_ACTUAL='DABEIBA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1083; 
UPDATE empleados SET UBICACION_ACTUAL='SANJOSEDELAMONTAÑA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1084; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1085; 
UPDATE empleados SET UBICACION_ACTUAL='NECHI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1086; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1087; 
UPDATE empleados SET UBICACION_ACTUAL='PEQUE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1088; 
UPDATE empleados SET UBICACION_ACTUAL='MONTEBELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1089; 
UPDATE empleados SET UBICACION_ACTUAL='ANZA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1090; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1091; 
UPDATE empleados SET UBICACION_ACTUAL='GUARNE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1092; 
UPDATE empleados SET UBICACION_ACTUAL='SANPEDRODEURABA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1093; 
UPDATE empleados SET UBICACION_ACTUAL='SABANALARGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1094; 
UPDATE empleados SET UBICACION_ACTUAL='CALDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1095; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1096; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1097; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1098; 
UPDATE empleados SET UBICACION_ACTUAL='APARTADO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1099; 
UPDATE empleados SET UBICACION_ACTUAL='ITUANGO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1100; 
UPDATE empleados SET UBICACION_ACTUAL='BELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1101; 
UPDATE empleados SET UBICACION_ACTUAL='COPACABANA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1102; 
UPDATE empleados SET UBICACION_ACTUAL='MARINILLA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1103; 
UPDATE empleados SET UBICACION_ACTUAL='ITUANGO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1104; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1105; 
UPDATE empleados SET UBICACION_ACTUAL='CAREPA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1106; 
UPDATE empleados SET UBICACION_ACTUAL='BETULIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1107; 
UPDATE empleados SET UBICACION_ACTUAL='CONCORDIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1108; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1109; 
UPDATE empleados SET UBICACION_ACTUAL='NARIÑO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1110; 
UPDATE empleados SET UBICACION_ACTUAL='ABEJORRAL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1111; 
UPDATE empleados SET UBICACION_ACTUAL='ANGELOPOLIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1112; 
UPDATE empleados SET UBICACION_ACTUAL='SANLUIS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1113; 
UPDATE empleados SET UBICACION_ACTUAL='ITAGUI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1114; 
UPDATE empleados SET UBICACION_ACTUAL='MURINDO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1115; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1116; 
UPDATE empleados SET UBICACION_ACTUAL='CAÑASGORDAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1117; 
UPDATE empleados SET UBICACION_ACTUAL='LACEJA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1118; 
UPDATE empleados SET UBICACION_ACTUAL='BELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1119; 
UPDATE empleados SET UBICACION_ACTUAL='SABANALARGA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1120; 
UPDATE empleados SET UBICACION_ACTUAL='SANRAFAEL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1121; 
UPDATE empleados SET UBICACION_ACTUAL='NECHI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1122; 
UPDATE empleados SET UBICACION_ACTUAL='SALGAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1123; 
UPDATE empleados SET UBICACION_ACTUAL='ENTRERRIOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1124; 
UPDATE empleados SET UBICACION_ACTUAL='GOMEZPLATA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1125; 
UPDATE empleados SET UBICACION_ACTUAL='OLAYA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1126; 
UPDATE empleados SET UBICACION_ACTUAL='CHIGORODO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1127; 
UPDATE empleados SET UBICACION_ACTUAL='GUATAPE'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1128; 
UPDATE empleados SET UBICACION_ACTUAL='DONMATIAS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1129; 
UPDATE empleados SET UBICACION_ACTUAL='CAMPAMENTO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1130; 
UPDATE empleados SET UBICACION_ACTUAL='ARMENIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1131; 
UPDATE empleados SET UBICACION_ACTUAL='CIUDADBOLIVAR'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1132; 
UPDATE empleados SET UBICACION_ACTUAL='ANDES'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1133; 
UPDATE empleados SET UBICACION_ACTUAL='SANCARLOS'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1134; 
UPDATE empleados SET UBICACION_ACTUAL='BELMIRA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1135; 
UPDATE empleados SET UBICACION_ACTUAL='ALEJANDRIA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1136; 
UPDATE empleados SET UBICACION_ACTUAL='AMALFI'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1137; 
UPDATE empleados SET UBICACION_ACTUAL='FRONTINO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1138; 
UPDATE empleados SET UBICACION_ACTUAL='BARBOSA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1139; 
UPDATE empleados SET UBICACION_ACTUAL='PEÐOL'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1140; 
UPDATE empleados SET UBICACION_ACTUAL='SABANETA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1141; 
UPDATE empleados SET UBICACION_ACTUAL='MONTEBELLO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1142; 
UPDATE empleados SET UBICACION_ACTUAL='GIRARDOTA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1143; 
UPDATE empleados SET UBICACION_ACTUAL='LIBORINA'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1144; 
UPDATE empleados SET UBICACION_ACTUAL='EBEJICO'                                      ,Fecha_ultimo_Vuelo=SYSDATE-4 + dbms_random.value(1,3),estado_empleado='ACTIVO' WHERE ID=1145; 

COMMIT WORK;