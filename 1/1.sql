CREATE TABLE IF NOT EXISTS "tipocuenta" (
	"tipocuentaid"	INTEGER,
	"nombre"	TEXT NOT NULL,
	PRIMARY KEY("tipocuentaid")
)
						
CREATE TABLE IF NOT EXISTS "tipocliente" (
	"tipoclienteid"	INTEGER,
	"nombre"	TEXT NOT NULL,
	PRIMARY KEY("tipoclienteid")
)

CREATE TABLE IF NOT EXISTS "tipotarjeta" (
	"tipotarjetaid"	INTEGER,
	"nombre"	TEXT NOT NULL,
	PRIMARY KEY("tipotarjetaid")
)

INSERT INTO tipocuenta ("nombre") VALUES('caja de ahorro en pesos'),('caja de ahorro en dolares'),('cuenta corriente')
INSERT INTO tipocliente ("nombre") VALUES('classic'),('gold'),('black')
INSERT INTO tipotarjeta ("nombre") VALUES('visa'),('mastercard')