SELECT 
	TT.nombre AS [tipo]
	,C.branch_id AS [sucursal]
	,COUNT(numero) AS [numero]
FROM tarjeta T
JOIN tipotarjeta TT ON TT.tipotarjetaid = T.tipotarjeta
JOIN cliente C ON C.customer_id = T.customer_id
GROUP BY 1, 2

