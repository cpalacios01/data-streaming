--Precio mínimo registrado por símbolo
--Consulta General todos los symbol
SELECT * FROM minprice_record;
 
--Precio mínimo registrado para BINANCE:BTCUSDT
SELECT * FROM minprice_record
WHERE symbol = 'BINANCE:BTCUSDT';

--Precio mínimo registrado para AAPL
SELECT * FROM minprice_record
WHERE symbol = 'AAPL';

--Precio mínimo registrado para AMZN
SELECT * FROM minprice_record
WHERE symbol = 'AMZN';
