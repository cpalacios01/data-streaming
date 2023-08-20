--Promedio ponderado de precio 
--Consulta General todos los symbol
SELECT * FROM reg_prom;
 
--Promedio ponderado para BINANCE:BTCUSDT
SELECT * FROM reg_prom
WHERE symbol = 'BINANCE:BTCUSDT';

--Promedio ponderado para AAPL
SELECT * FROM reg_prom
WHERE symbol = 'AAPL';

--Promedio ponderado para AMZN
SELECT * FROM reg_prom
WHERE symbol = 'AMZN';




