-- PUNTO 1

CREATE OR REPLACE VIEW GET_VUELOS_CONFIRMADOS AS
SELECT ITINERARIOS.ID "ITINERARIO_ID",
ITINERARIOS.AVION_ID "AVION_ID",
ITINERARIOS.ESTADO "ESTADO_VUELO",
ITINERARIOS.FECHA_SALIDA_ESTIMADA "FECHA_SALIDA_VUELO", 
ITINERARIOS.FECHA_LLEGADA_ESTIMADA "FECHA_LLEGADA_VUELO",
RUTAS.CANTIDAD_PROMEDIO_HORAS "PROMEDIO_HORAS_VUELO",
VUELOS.NUMERO_VUELO "NUMERO_VUELO",
ITINERARIOS.PASAJEROS_ECONOMICA "NUMERO_PASAJEROS_ECONOMICA",
ITINERARIOS.PASAJEROS_EJECUTIVA "NUMERO_PASAJEROS_EJECUTIVA",
(NVL(ITINERARIOS.PASAJEROS_ECONOMICA,0) + NVL(ITINERARIOS.PASAJEROS_EJECUTIVA,0)) "NUMERO_TOTAL_PASAJEROS",
AEROPUERTOS_ORIGEN.ID "AEROPUERTO_ORIGEN_ID",
AEROPUERTOS_ORIGEN.NOMBRE "AEROPUERTO_ORIGEN",
AEROPUERTOS_ORIGEN.CIUDAD "CIUDAD_ORIGEN",
AEROPUERTOS_DESTINO.ID "AEROPUERTO_DESTINO_ID",
AEROPUERTOS_DESTINO.NOMBRE "AEROPUERTO_DESTINO",
AEROPUERTOS_DESTINO.CIUDAD "CIUDAD_DESTINO",
AVIONES.ESTADO "AVION_ESTADO",
MODELOS_AVIONES.CAPACIDAD_EJECUTIVA "AVION_CAPACIDAD_EJECUTIVA",
MODELOS_AVIONES.CAPACIDAD_ECONOMICA "AVION_CAPACIDAD_ECONOMICA",
(NVL(MODELOS_AVIONES.CAPACIDAD_ECONOMICA,0) + NVL(MODELOS_AVIONES.CAPACIDAD_EJECUTIVA,0)) "CAPACIDAD_TOTAL"
FROM ITINERARIOS
INNER JOIN VUELOS ON ITINERARIOS.VUELO_ID = VUELOS.ID
INNER JOIN RUTAS ON RUTAS.ID = VUELOS.RUTA_ID
INNER JOIN AEROPUERTOS AEROPUERTOS_ORIGEN ON RUTAS.AEROPUERTO_ORIGEN_ID = AEROPUERTOS_ORIGEN.ID
INNER JOIN AEROPUERTOS AEROPUERTOS_DESTINO ON RUTAS.AEROPUERTO_DESTINO_ID = AEROPUERTOS_DESTINO.ID
LEFT OUTER JOIN AVIONES ON AVIONES.ID = ITINERARIOS.AVION_ID
LEFT OUTER JOIN MODELOS_AVIONES ON AVIONES.MODELO_AVION_ID = MODELOS_AVIONES.ID
WHERE ITINERARIOS.ESTADO IN ('Confirmado','Programado')
ORDER BY ITINERARIOS.FECHA_LLEGADA_ESTIMADA DESC;



---- PROCEDIMIENTO CREADO SOLAMENTE PARA ORGANIZAR FECHAS PARA PRUEBAS DEL EJERCICIO
CREATE OR REPLACE PROCEDURE ORGANIZAR_FECHAS_VUELOS AS 
    FECHA_LLEG_TO_UP ITINERARIOS.FECHA_SALIDA_ESTIMADA%TYPE;
     IDITINERARIO number;
     PROMEDIO NUMBER;
     CURSOR ITINERARIOS_C IS
     SELECT DISTINCT ITINERARIO_ID FROM GET_VUELOS_CONFIRMADOS WHERE AEROPUERTO_DESTINO_ID = 8080 AND AVION_ID IS NOT NULL;
BEGIN
      SELECT FECHA_SALIDA_VUELO + ((SELECT ROUND(dbms_random.value(-10, -2)) FROM DUAL)/24) INTO FECHA_LLEG_TO_UP FROM GET_VUELOS_CONFIRMADOS WHERE ITINERARIO_ID = 50000;
      DBMS_OUTPUT.put_line(FECHA_LLEG_TO_UP);
      
      OPEN ITINERARIOS_C;
        LOOP 
            FETCH ITINERARIOS_C INTO IDITINERARIO;
                EXIT WHEN ITINERARIOS_C%NOTFOUND;
                SELECT  PROMEDIO_HORAS_VUELO INTO PROMEDIO FROM GET_VUELOS_CONFIRMADOS WHERE ITINERARIO_ID = IDITINERARIO;
                UPDATE ITINERARIOS SET FECHA_LLEGADA_ESTIMADA = FECHA_LLEG_TO_UP, FECHA_LLEGADA_REAL = FECHA_LLEG_TO_UP, 
                FECHA_SALIDA_REAL = FECHA_LLEG_TO_UP - PROMEDIO/24, FECHA_SALIDA_ESTIMADA =  FECHA_LLEG_TO_UP - PROMEDIO/24 WHERE ID = IDITINERARIO;
        END LOOP;
    CLOSE ITINERARIOS_C;
END;


--- Este llamado del store procedure es necesario para organizar que algunos vuelos ingresados para la prueba tenga relacion con las fechas de otros vuelos
--por favor ejecutar este store procedure
---EXEC ORGANIZAR_FECHAS_VUELOS;

-- PUNTO 2
-- ASIGNAR VUELOS
CREATE OR REPLACE FUNCTION ASIGNAR_AVION(ITINERARIO_ID_PARAMETER IN NUMBER) RETURN NUMBER 
IS isSUCCESS NUMBER;
   ITINERARIO_SELECT_VUELO ITINERARIOS.ID%TYPE;
   ITINERARIO_AEROP_SALIDA_ID AEROPUERTOS.ID%TYPE;
   ITINERARIO_FECHA_SALIDA ITINERARIOS.FECHA_SALIDA_ESTIMADA%TYPE;
   ITINERARIO_SELECT_FEC_LLEG ITINERARIOS.FECHA_LLEGADA_ESTIMADA%TYPE;
   DIFERENCIA_FECHAS NUMBER;
   ESTADO_AVION AVIONES.ESTADO%TYPE;
   TO_SELECT_AVION_ID AVIONES.ID%TYPE;
   STEP NUMBER;
BEGIN
        STEP := 0;
        --- BUESQUEDA DEL VUELO PASADO COMO PARAMETRO
        SELECT AEROPUERTO_ORIGEN_ID, FECHA_SALIDA_VUELO
        INTO ITINERARIO_AEROP_SALIDA_ID, ITINERARIO_FECHA_SALIDA 
        FROM GET_VUELOS_CONFIRMADOS WHERE ITINERARIO_ID = ITINERARIO_ID_PARAMETER AND AVION_ID IS NULL AND ESTADO_VUELO = 'Programado'; 
        
        STEP := 1;
        --BUESQUEDA DEL VUELO QUE COINCIDA CON EL AEROPUERTO DE DESTINO IGUAL QUE EL DE ORIGEN DEL VUELO BUSCADO ANTERIORMENTE
        -- ADEMAS QUE EL VUELO TENGA UN AVION ASIGNADO Y QUE LA FECHA ENTRE VUELOS ESTE 2 Y 12 HORAS DE DIFERENCIA Y QUE EL AVION PUEDA
        -- SER ASIGNADO OSEA EN ESTADO VUELO O TIERRA
        SELECT ITINERARIO_ID , TRUNC((ITINERARIO_FECHA_SALIDA - FECHA_LLEGADA_VUELO) * (24)),
        FECHA_LLEGADA_VUELO, AVION_ESTADO, AVION_ID
        INTO ITINERARIO_SELECT_VUELO , DIFERENCIA_FECHAS, ITINERARIO_SELECT_FEC_LLEG, ESTADO_AVION,
        TO_SELECT_AVION_ID
        FROM GET_VUELOS_CONFIRMADOS 
        WHERE AEROPUERTO_DESTINO_ID = ITINERARIO_AEROP_SALIDA_ID 
        --AND TO_CHAR(FECHA_LLEGADA_VUELO, 'MM-DD-YYYY') = TO_CHAR(ITINERARIO_FECHA_SALIDA, 'MM-DD-YYYY')
        AND AVION_ID IS NOT NULL
        AND TRUNC((ITINERARIO_FECHA_SALIDA - FECHA_LLEGADA_VUELO) * (24)) >= 2 
        AND TRUNC((ITINERARIO_FECHA_SALIDA - FECHA_LLEGADA_VUELO) * (24)) <= 12
        AND AVION_ESTADO IN ('Vuelo','Tierra')
        OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

        STEP := 2;
        --ACTUALIZAION DEL VUELO
        UPDATE ITINERARIOS SET AVION_ID = TO_SELECT_AVION_ID WHERE ID = ITINERARIO_ID_PARAMETER;
        
IF SQL%FOUND THEN
     isSUCCESS := 1;
     DBMS_OUTPUT.put_line('VUELO A CONFIRMAR: ' || ITINERARIO_ID_PARAMETER || ', FECHA DE SALIDA: ' || ITINERARIO_FECHA_SALIDA 
                          || ', AEROPUERTO DE SALIDA ID: ' || ITINERARIO_AEROP_SALIDA_ID);
     DBMS_OUTPUT.put_line('VUELO A SELECCIONADO: ' || ITINERARIO_SELECT_VUELO || ', FECHA DE LLEGADA : ' || ITINERARIO_SELECT_FEC_LLEG
                       || ', AVION ID: '  || TO_SELECT_AVION_ID || ', ESTADO DEL AVION: ' || ESTADO_AVION); 
     DBMS_OUTPUT.put_line('DIFERENCIA DE HORAS ENTRE LOS VUELOS: ' || DIFERENCIA_FECHAS);
     DBMS_OUTPUT.put_line('SE ACTUALIZÓ EL VUELO: ' || ITINERARIO_ID_PARAMETER || ' CON EL AVION: ' || TO_SELECT_AVION_ID);
     RETURN isSUCCESS;
END IF; 

EXCEPTION
        WHEN NO_DATA_FOUND THEN
            isSUCCESS := 0;
            IF STEP = 0 THEN
                 DBMS_OUTPUT.put_line('EL VUELO: '|| ITINERARIO_ID_PARAMETER || ' NO SE ENCONTRO O YA POSEE UN AVION ASIGNADO O NO ESTA PROGRAMADO');
            ELSIF STEP = 1 THEN   
                DBMS_OUTPUT.put_line('NO SE ENCONTRARON VUELOS QUE SE DIRIGAN AL AEROPUERTO DEL VUELO: '|| ITINERARIO_ID_PARAMETER || ' EL MISMO DIA CON 2 HORAS COMO MINIMO DE DIFERENCIA');
            ELSE  
                DBMS_OUTPUT.put_line('DATA NO FOUND');
            END IF;  
        RETURN isSUCCESS;

END ASIGNAR_AVION;


--  ASIGNAR_PILOTOS_ITINERARIOS
CREATE OR REPLACE FUNCTION ASIGNAR_PILOTOS_ITINERARIOS (IDITINERARIO IN NUMBER,UBICACION_ORIGEN IN VARCHAR2) 

return number IS succes NUMBER;
CONT NUMBER := 0 ;
IDPILOTO number;
TOTAL_ROW_CURSOR NUMBER;
--CURSOR QUE TRAE PILOTOS EN ESTADO ACTIVO, MAS DE DOS HORAS DE DESCANSO Y EN LA CIUDAD DE ORIGEN DEL VUELO A SALIR
CURSOR C_PILOTOS IS 
SELECT PILOTOS.ID PILOTO_ID
FROM EMPLEADOS INNER JOIN PILOTOS ON PILOTOS.EMPLEADO_ID=EMPLEADOS.ID
WHERE  EMPLEADOS.ESTADO_EMPLEADO ='ACTIVO' AND TRUNC((SYSDATE -  EMPLEADOS.Fecha_ultimo_Vuelo ) * (24)) >= 2 AND EMPLEADOS.UBICACION_ACTUAL=UBICACION_ORIGEN;

BEGIN 
-- CURSOR PARA TRAER EL NUMERO DE REGISTROS DE PILOTOS CONSULTADOS
SELECT COUNT(*)  INTO TOTAL_ROW_CURSOR
FROM EMPLEADOS INNER JOIN PILOTOS ON PILOTOS.EMPLEADO_ID=EMPLEADOS.ID
WHERE  EMPLEADOS.ESTADO_EMPLEADO ='ACTIVO' AND TRUNC((SYSDATE -  EMPLEADOS.Fecha_ultimo_Vuelo ) * (24)) >= 2 AND EMPLEADOS.UBICACION_ACTUAL=UBICACION_ORIGEN;

OPEN C_PILOTOS;
   LOOP   
        FETCH C_PILOTOS INTO IDPILOTO;
           -- VALIDA QUE SE HAYAN TRAIDO AL MENOS DOS REGISTROS
            IF TOTAL_ROW_CURSOR >= 1 THEN
                    -- EL PRIMERO REGISTRO ES DE PILOTOS Y EL SEGUNO DE COPILOTO
                    IF CONT = 0 THEN
                        UPDATE  ITINERARIOS SET  PILOTO_ID=IDPILOTO WHERE id=iditinerario;
                    ELSE         
                        UPDATE  ITINERARIOS SET  COPILOTO_ID=IDPILOTO WHERE id=iditinerario;
                        succes:=1;
                    END IF;
                    CONT := CONT + 1;
            ELSE
                    DBMS_OUTPUT.PUT_LINE ('NO HAY PILOTOS SUFICIENTES');
                    CONT :=  2;
                    succes:=0;
            END IF;              
    EXIT WHEN CONT=2;    
    END LOOP;
CLOSE C_PILOTOS;
RETURN  succes;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE ('No se encontraron datos');
        succes:=0;
        RETURN  succes;
END;


--  ASIGNAR_TRIPULANTES_ITINERARIO

CREATE OR REPLACE FUNCTION ASIGNAR_TRIPULANTES_ITINERARIO (IDITINERARIO IN NUMBER,UBICACION_ORIGEN IN VARCHAR2,TOTAL_PASAJEROS IN NUMBER,DURACION_VUELO IN NUMBER) 

return number IS succes NUMBER;

NUMERO_TRIPULANTES NUMBER;
CONT NUMBER := 0 ;
IDEMPLEADO number;
TOTAL_ROW_CURSOR NUMBER;
--TRAE TODOS LOS EMPLEADOS ACTIVO, CON MAS DE DOS HORAS DE DESCANSO Y EN LA MISMA CIUDAD ORIGEN DE SALIDA DEL VUELO
CURSOR C_EMPLEADOS IS 
SELECT  EMPLEADOS.ID empleado_id
FROM    EMPLEADOS 
WHERE   EMPLEADOS.ESTADO_EMPLEADO ='ACTIVO' AND EMPLEADOS.TIPO_EMPLEADO='Auxiliares de Servicio'
AND    TRUNC((SYSDATE -  EMPLEADOS.Fecha_ultimo_Vuelo ) * (24)) >= 2  AND    EMPLEADOS.UBICACION_ACTUAL=UBICACION_ORIGEN;
BEGIN 
-- SE VALIDAN POR EL TOTAL DE PASAJEROS DEL AVION EL NUMERO DE TRIPULANTES
case 
when TOTAL_PASAJEROS >= 19  and TOTAL_PASAJEROS < 50  then NUMERO_TRIPULANTES := 1;
when TOTAL_PASAJEROS >= 50  and TOTAL_PASAJEROS < 100 then NUMERO_TRIPULANTES := 2;
when TOTAL_PASAJEROS >= 100 and TOTAL_PASAJEROS < 180 then NUMERO_TRIPULANTES := 3;
when TOTAL_PASAJEROS >= 180 and TOTAL_PASAJEROS < 200 then NUMERO_TRIPULANTES := 4;
when TOTAL_PASAJEROS >= 200 and TOTAL_PASAJEROS < 250 then NUMERO_TRIPULANTES := 5;
when TOTAL_PASAJEROS >= 250 and TOTAL_PASAJEROS < 300 then NUMERO_TRIPULANTES := 6;
when TOTAL_PASAJEROS >= 300 and TOTAL_PASAJEROS < 350 then NUMERO_TRIPULANTES := 7;
when TOTAL_PASAJEROS >= 350 and TOTAL_PASAJEROS < 400 then NUMERO_TRIPULANTES := 8;
when TOTAL_PASAJEROS >= 450 and TOTAL_PASAJEROS < 500 then NUMERO_TRIPULANTES := 9;
when TOTAL_PASAJEROS >= 500 and TOTAL_PASAJEROS < 600 then NUMERO_TRIPULANTES := 10;
when TOTAL_PASAJEROS >= 650 and TOTAL_PASAJEROS < 700 then NUMERO_TRIPULANTES := 11;
when TOTAL_PASAJEROS >= 750 and TOTAL_PASAJEROS < 800 then NUMERO_TRIPULANTES := 12;
when TOTAL_PASAJEROS >= 850 and TOTAL_PASAJEROS < 853 then NUMERO_TRIPULANTES := 18;
else NUMERO_TRIPULANTES := 1;
end case;
    -- SE DUPLICA EL VALOR DE TRIPULANTES PARA ROTAR TURNOS
    IF DURACION_VUELO > 6 THEN
       NUMERO_TRIPULANTES :=  NUMERO_TRIPULANTES * 2;
    END IF;
    -- SE TRAE EL TOTAL DE REGISTROS DE EMPLEADOS  PARA VALIDAR EL TOPE NECESARIO PARA TRIPULANTES REQUERIDOS
    SELECT COUNT(*)  INTO TOTAL_ROW_CURSOR FROM    EMPLEADOS 
    WHERE   EMPLEADOS.ESTADO_EMPLEADO ='ACTIVO' AND EMPLEADOS.TIPO_EMPLEADO='Auxiliares de Servicio'
    AND    TRUNC((SYSDATE -  EMPLEADOS.Fecha_ultimo_Vuelo ) * (24)) >= 2  AND    EMPLEADOS.UBICACION_ACTUAL=UBICACION_ORIGEN; 

OPEN C_EMPLEADOS;

   LOOP   
        FETCH C_EMPLEADOS INTO IDEMPLEADO;
                --VALIDAMOS EL TOTAL DE REGISTROS SEA MAYOR AL DE TRIPULANTES REQUERIDOS
            IF TOTAL_ROW_CURSOR >= NUMERO_TRIPULANTES THEN
                    INSERT INTO TRIPULANTES(itinerario_id,empleado_id) VALUES (IDITINERARIO,IDEMPLEADO);
                    CONT := CONT + 1;
                    succes:=1;
            ELSE
                    DBMS_OUTPUT.PUT_LINE ('NO HAY AUXILIARES SUFICIENTES. REQUIERE DE '|| NUMERO_TRIPULANTES || ' TRIPULANTES Y CUENTA ACTUALMENTE CON '||TOTAL_ROW_CURSOR);
                    CONT :=  NUMERO_TRIPULANTES;
                    succes:=0;
            END IF;                  
    EXIT WHEN CONT=NUMERO_TRIPULANTES; 
    END LOOP;
 
CLOSE C_EMPLEADOS; 
RETURN  succes;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE ('No se encontraron datos');
        succes:=0;
RETURN  succes;
    
END ASIGNAR_TRIPULANTES_ITINERARIO;


---- PROCEDIMIENTO PRINCIPAL DEL PUNTO 2

CREATE OR REPLACE PROCEDURE CONFIRMACION_VUELO(ITINERARIO_PARAMETER IN NUMBER) AS
    --ITINERARIO_PARAMETER NUMBER := 50003;
    ISSUCCESS NUMBER;
    TOTAL_CAPACIDAD_PASAJEROS NUMBER;
    DURACION_VUELO NUMBER;
    UBICACION_ORIGEN VARCHAR2(256);
BEGIN
    -- SE ASIGNA EL AVION AL VUELO CORRESPONDIENTE
    ISSUCCESS := ASIGNAR_AVION(ITINERARIO_PARAMETER);
    -- SI RETORNA 1 ES POR QUE PUDO ASIGNAR EL AVION AL VUELO
    IF ISSUCCESS = 1 THEN
        --SE OBTIENE DE NUEVO EL VUELO PARA SABER SU RESPECTIVA VUELO ASIGNADO Y SUS CAPACIDADES DE PERSONAS
        SELECT CAPACIDAD_TOTAL, PROMEDIO_HORAS_VUELO, CIUDAD_ORIGEN
        INTO TOTAL_CAPACIDAD_PASAJEROS, DURACION_VUELO, UBICACION_ORIGEN 
        FROM GET_VUELOS_CONFIRMADOS WHERE ITINERARIO_ID = ITINERARIO_PARAMETER AND ESTADO_VUELO = 'Programado';   
        ISSUCCESS := ASIGNAR_PILOTOS_ITINERARIOS(ITINERARIO_PARAMETER,UBICACION_ORIGEN);
        -- SI RETORNA 1 ES POR QUE PUEDE Y AGRERO EL PILOTO Y EL COPILO AL VUELO
        IF ISSUCCESS = 1 THEN
            ISSUCCESS := ASIGNAR_TRIPULANTES_ITINERARIO(ITINERARIO_PARAMETER, UBICACION_ORIGEN, TOTAL_CAPACIDAD_PASAJEROS, DURACION_VUELO);
            IF ISSUCCESS = 1 THEN
                UPDATE ITINERARIOS SET ESTADO='Confirmado' WHERE ID = ITINERARIO_PARAMETER;
                DBMS_OUTPUT.put_line('SE COMPLETO CORRECTAMENTE LA ASIGNACION DE AVION, PILOTOS, COPILOS Y TRIPULANTES');
                COMMIT;
            ELSE 
                DBMS_OUTPUT.put_line('NO SE COMPLETO CORRECTAMENTE LA ASIGNACION DE AVION, PILOTOS, COPILOS Y TRIPULANTES');
                DBMS_OUTPUT.put_line('SE DESHARAN LOS CAMBIOS EFECTUADOS');
                ROLLBACK;
            END IF;
        ELSE
             DBMS_OUTPUT.put_line('SE DESHARAN LOS CAMBIOS EFECTUADOS');
             ROLLBACK;
        END IF;
    END IF;
END;

-------PUNTO 3------------
CREATE OR REPLACE PROCEDURE Realizar_Checkin_Pasajeros (silla IN VARCHAR, iditinerario IN NUMBER,idpasajero IN NUMBER,nro_confimacion_checkin in number ,contacto_emergencia in varchar2 ,ciudad_contacto_emergencia in varchar2 ,pais_contacto_emergencia in  varchar2 ,correo_contacto_emergencia in varchar2 ,telefono_contacto_emergencia in varchar2 ,confirmacion_checkin in char)
as
economica_total number;
ejcutiva_total number;
economica_actual number;
ejecutiva_actual number;
tempid number;

BEGIN
-- Total de capacidad del avion asignado
SELECT NVL(ma.capacidad_economica,0),NVL(ma.capacidad_ejecutiva,0),NVL(i.PASAJEROS_ECONOMICA,0),NVL(i.PASAJEROS_EJECUTIVA,0) 
INTO economica_total,ejcutiva_total,economica_actual,ejecutiva_actual 
FROM itinerarios i 
                    INNER JOIN aviones a ON i.avion_id=a.id  
                    INNER JOIN modelos_aviones ma ON a.modelo_avion_id=ma.id
where i.id=iditinerario;
--//Valida pasajeros SI EXISTE EL ID
select id into tempid from pasajeros where id=idpasajero;
                --VALIDA EL TIPO DE SILLA SEA LA CORRECTA
                IF (silla = 'ejecutiva') THEN
                                --VALIDA DISPONIBILIDAD DE ASIENTOS
                                IF (ejecutiva_actual < ejcutiva_total) THEN
                                     INSERT INTO CHECKIN (itinerario_id,PASAJERO_ID,nro_confimacion_checkin ,contacto_emergencia ,ciudad_contacto_emergencia ,pais_contacto_emergencia ,correo_contacto_emergencia ,telefono_contacto_emergencia,confirmacion_checkin )
                                                 VALUES (iditinerario,idpasajero,nro_confimacion_checkin ,contacto_emergencia ,ciudad_contacto_emergencia ,pais_contacto_emergencia ,correo_contacto_emergencia ,telefono_contacto_emergencia,confirmacion_checkin);
                                     ejecutiva_actual := ejecutiva_actual+ 1;
                                     UPDATE itinerarios SET PASAJEROS_EJECUTIVA=ejecutiva_actual WHERE id=iditinerario;
                                     COMMIT;
                                ELSE
                                     DBMS_OUTPUT.PUT_LINE('No hay asientos para la clase Ejecutiva');
                                END IF;            
                 ELSIF (silla = 'economica') THEN
                                IF (economica_actual < economica_total) THEN
                                     INSERT INTO CHECKIN (itinerario_id,PASAJERO_ID,nro_confimacion_checkin ,contacto_emergencia ,ciudad_contacto_emergencia ,pais_contacto_emergencia ,correo_contacto_emergencia ,telefono_contacto_emergencia,confirmacion_checkin )
                                                 VALUES (iditinerario,idpasajero,nro_confimacion_checkin ,contacto_emergencia ,ciudad_contacto_emergencia ,pais_contacto_emergencia ,correo_contacto_emergencia ,telefono_contacto_emergencia,confirmacion_checkin);
                                     economica_actual := economica_actual + 1;
                                     UPDATE itinerarios SET PASAJEROS_ECONOMICA=economica_actual WHERE id=iditinerario;
                                     COMMIT;
                                ELSE
                                     DBMS_OUTPUT.PUT_LINE('No hay asientos para la clase Economica');
                                END IF; 
                 ELSE
                                DBMS_OUTPUT.PUT_LINE('No existe el tipo de silla: ' || silla);
                 END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE ('No se encontraron datos');
END;


---- PUNTO 4
CREATE OR REPLACE VIEW Tripulantes_Itinerarios AS 
-- CARGA LOS TRIPULANTES DE DIFERENTES ITINERARIOS EN TODOS LOS ESTADOS
SELECT i.id itinerario_id, e.id empleado_id,e.nombre,e.tipo_empleado ,i.estado
FROM  tripulantes t INNER JOIN itinerarios i ON t.itinerario_id=i.id
                  INNER JOIN empleados e   ON t.empleado_id = e.id
 
union ALL
-- CARGA EL PILOTO DE LOS DIFERENTES ITINERARIOS EN TODOS LOS ESTADOS
select i.id itinerario_id,e.id empleado_id,e.nombre,CASE e.tipo_empleado WHEN 'Pilotos' THEN 'Piloto' END,i.estado
from itinerarios i inner join pilotos p on i.piloto_id=p.id
                   inner join empleados e on e.id=p.empleado_id

union all
-- CARGA EL COPILOTO DE LOS DIFERENTES ITINERARIOS EN TODOS LOS ESTADOS
select i.id itinerario_id,e.id empleado_id,e.nombre, CASE e.tipo_empleado WHEN 'Pilotos' THEN 'CoPiloto' END,i.estado
from itinerarios i inner join pilotos p on i.copiloto_id=p.id
                   inner join empleados e on e.id=p.empleado_id
order by itinerario_id;

------PUNTO 5----
CREATE OR REPLACE VIEW VuelosProgramados AS
SELECT i.id,r.aeropuerto_origen_id ,ao.ciudad CIUDAD_ORIGEN,r.aeropuerto_destino_id ,ad.ciudad CIUDAD_DESTINO,v.numero_vuelo,i.fecha_salida_estimada
FROM itinerarios i INNER JOIN  vuelos v ON i.vuelo_id=v.id
                   INNER JOIN rutas r   ON v.ruta_id=r.id
                   INNER JOIN aeropuertos ad ON r.AEROPUERTO_DESTINO_ID=ad.id
                   INNER JOIN aeropuertos ao ON r.AEROPUERTO_ORIGEN_ID=ao.id
WHERE    TRUNC(i.fecha_salida_estimada) between TRUNC(SYSDATE) and TRUNC(SYSDATE + 15)
ORDER BY i.fecha_salida_estimada;

-- PUNTO 6--------------------------------------------------------------------

EXPLAIN PLAN SET STATEMENT_ID='EP_VUELOS_NO_CONFIRMADOS' FOR SELECT * FROM GET_VUELOS_CONFIRMADOS;
SELECT * FROM TABLE (DBMS_XPLAN.DISPLAY('PLAN_TABLE','EP_VUELOS_NO_CONFIRMADOS','TYPICAL'));

EXPLAIN PLAN SET STATEMENT_ID='EP_TRIPULANTES_ITINERARIOS' FOR SELECT * FROM TRIPULANTES_ITINERARIOS;
SELECT * FROM TABLE (DBMS_XPLAN.DISPLAY('PLAN_TABLE','EP_TRIPULANTES_ITINERARIOS','TYPICAL'));


EXPLAIN PLAN SET STATEMENT_ID='EP_VuelosProgramados' FOR SELECT * FROM VuelosProgramados;
SELECT * FROM TABLE (DBMS_XPLAN.DISPLAY('PLAN_TABLE','EP_VuelosProgramados','TYPICAL'));