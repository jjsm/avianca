
-- ##########################################################################################CORRECCIONES dejadas antes del 2 taller

ALTER TABLE LICENCIAS_PILOTOS ADD FECHA_OBTENCION  DATE  NULL;

ALTER TABLE ITINERARIOS DROP column CANTIDAD_PASAJEROS;
ALTER TABLE ITINERARIOS ADD PASAJEROS_ECONOMICA  NUMBER  NULL;
ALTER TABLE ITINERARIOS ADD PASAJEROS_EJECUTIVA  NUMBER   NULL;

ALTER PROFILE development LIMIT FAILED_LOGIN_ATTEMPTS UNLIMITED;

--  A)
ALTER TABLE aviones ADD estado  varchar2(13)  NULL;
ALTER TABLE aviones  ADD CONSTRAINT check_estado_aviones CHECK (estado IN ('Vuelo','Tierra','Mantenimiento','Reparacion'));

-- ..........................................................................................

--  B)

ALTER TABLE aviones ADD aeropuerto_id  number  NULL;
ALTER TABLE aviones ADD CONSTRAINT FK_aviones__aeropuertos FOREIGN KEY (aeropuerto_id) REFERENCES aeropuertos(id);

--  C)
ALTER TABLE itinerarios ADD estado  varchar2(11)  NULL;
ALTER TABLE itinerarios  ADD CONSTRAINT check_estado_itinerarios CHECK (estado IN ('Vuelo', 'Cancelado', 'Retrasado', 'Confirmado', 'Abordando', 'Programado'));

-- ..........................................................................................