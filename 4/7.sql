CREATE TABLE "movimientos" (
	"id_movimiento"	INTEGER,
	"numerocuenta"	INTEGER,
	"monto"	INTEGER,
	"tipo_operacion"	INTEGER,
	"fecha"	TEXT,
	PRIMARY KEY("id_movimiento")
);

UPDATE cuenta SET balance=balance-1000 WHERE customer_id=200;
UPDATE cuenta SET balance=balance+1000 WHERE customer_id=400;

INSERT INTO movimientos (numerocuenta,monto,tipo_operacion,fecha)
VALUES(100,1000,2,date('now'))