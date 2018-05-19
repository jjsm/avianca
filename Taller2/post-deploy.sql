

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

COMMIT WORK;