CREATE TABLE IF NOT EXISTS "direccion" (
	"id"	INTEGER,
	"address" VARCHAR(50),
	"ciudad" VARCHAR(50),
	"provincia" VARCHAR(50),
	"pais" VARCHAR(50),
	cliente INTEGER,
	sucursal INTEGER,
	PRIMARY KEY("id"),
	FOREIGN KEY(cliente) REFERENCES cliente(customer_id),
	FOREIGN KEY(sucursal) REFERENCES sucursal(branch_id)
)