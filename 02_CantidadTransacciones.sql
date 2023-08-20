--Transacciones procesadas por símbolo
--Consulta General todos los symbol
SELECT * FROM reg_record;
 
--Cantidad de transacciones de BINANCE:BTCUSDT
SELECT * FROM reg_record 
WHERE symbol = 'BINANCE:BTCUSDT';

--Cantidad de transacciones de AAPL
SELECT * FROM reg_record 
WHERE symbol = 'AAPL';

--Cantidad de transacciones de AMZN
SELECT * FROM reg_record 
WHERE symbol = 'AMZN';
