CREATE PROCEDURE michelin.sp_insert_exchange_rate(in p_currency varchar(8), in p_conversion float)
BEGIN
	IF NOT EXISTS (select currency from exchange_rate where currency = p_currency) THEN 
		INSERT INTO exchange_rate (
			currency, 
			conversion
			)
		VALUES (
			p_currency,
			p_conversion
			);
	END IF;
END
