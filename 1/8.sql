ALTER TABLE cuenta ADD tipo_cuenta INTEGER NOT NULL
UPDATE cuenta SET tipo_cuenta=(random()) % (4 - 2) + 2
