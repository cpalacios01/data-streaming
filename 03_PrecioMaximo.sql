--Precio máximo registrado por símbolo
--Consulta General todos los symbol
SELECT * FROM maxprice_record;
 
--Precio máximo registrado para BINANCE:BTCUSDT
SELECT * FROM maxprice_record 
WHERE symbol = 'BINANCE:BTCUSDT';

--Precio máximo registrado para AAPL
SELECT * FROM maxprice_record 
WHERE symbol = 'AAPL';

--Precio máximo registrado para AMZN
SELECT * FROM maxprice_record 
WHERE symbol = 'AMZN';

