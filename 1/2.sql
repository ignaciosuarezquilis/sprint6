CREATE TABLE IF NOT EXISTS "tarjeta" (
	"id"	INTEGER,
	"numero" VARCHAR(20),
	"CVV"	VARCHAR(3) NOT NULL,
	"fechaotorgamiento" TEXT NOT NULL,
	"fechavencimiento" TEXT NOT NULL,
	tipotarjeta INTEGER,
	customer_id INTEGER,
	PRIMARY KEY("id"),
	FOREIGN KEY(tipotarjeta) REFERENCES tipotarjeta(tipotarjetaid),
	FOREIGN KEY(customer_id) REFERENCES cliente(customer_id)
)