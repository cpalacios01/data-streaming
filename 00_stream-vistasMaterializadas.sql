--Creacion STREAM, en este caso sobre un topic ya existente: 'reg-updates'
CREATE STREAM registros (symbol VARCHAR, price DOUBLE,  volume DOUBLE, timestamp STRING)
WITH (kafka_topic='reg-updates', value_format='json', partitions=1);

--Creación de vistas materializadas para posteriores consultas
--1. Calculo de promedio ponderado, agrupado por symbol
CREATE TABLE reg_prom AS
    SELECT symbol,
		   count(price) AS total_registros,
		   sum(price*volume) AS weighted_price,
		   sum(volume) AS total_volume,
           	   sum(price*volume)/ sum(volume) AS promedio
    FROM registros
    GROUP BY symbol
    EMIT CHANGES;


--2. Cantidad de registros procesados, agrupado por symbol
CREATE TABLE reg_record AS
    SELECT symbol,
           count(price) AS total_registros
    FROM registros
    GROUP BY symbol
    EMIT CHANGES;


--3. Calculo del máximo precio registrado, agrupado por symbol
CREATE TABLE maxprice_record AS
    SELECT symbol,
           max(price) AS precio_maximo
    FROM registros
    GROUP BY symbol
    EMIT CHANGES;

--4. Calculo del mínimo precio registrado, agrupado por symbol
CREATE TABLE minprice_record AS
    SELECT symbol,
           min(price) AS precio_minimo
    FROM registros
    GROUP BY symbol
    EMIT CHANGES;

