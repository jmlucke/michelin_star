CREATE PROCEDURE michelin.sp_get_search_result(IN _query varchar(512))
BEGIN
	SELECT
        ms.name,
        ms.address,
        ms.location,
        ms.minprice,
        ms.maxprice,
        ms.currency,
        ms.cuisine,
        ms.longitude,
        ms.latitude,
        ms.phonenumber,
        ms.url,
        ms.websiteurl,
        ms.award
    FROM 
        michelin_star ms
    WHERE
    	ms.name LIKE CONCAT('%', _query , '%')
        or
        ms.address LIKE CONCAT('%', _query , '%')
        or
        ms.cuisine LIKE CONCAT('%', _query , '%');
END
