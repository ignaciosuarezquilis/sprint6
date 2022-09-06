CREATE VIEW vistacliente AS SELECT  customer_id, branch_id, customer_name, customer_surname, customer_DNI,(strftime('%Y', 'now') - strftime('%Y', dob )) - (strftime('%m-%d', 'now') < strftime('%m-%d', dob )) AS edad FROM cliente;
SELECT * FROM vistacliente WHERE edad>40 ORDER BY customer_DNI ASC
SELECT * FROM vistacliente WHERE customer_name="Anne" OR customer_name="Tyler" ORDER BY edad ASC

