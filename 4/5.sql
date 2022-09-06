CREATE TABLE "auditoria_cuenta" (
	"id"	INTEGER,
	"old_id"	INTEGER,
	"new_id"	INTEGER,
	"old_balance"	INTEGER,
	"new_balance"	INTEGER,
	"old_iban"	TEXT,
	"new_iban"	TEXT,
	"old_type"	TEXT,
	"new_type"	TEXT,
	"user_action"	TEXT,
	"created_at"	TEXT,
	PRIMARY KEY("id")
)

CREATE TRIGGER registroact 
AFTER UPDATE ON cuenta
when OLD.balance<>NEW.balance OR OLD.iban<>NEW.iban OR OLD.type<>NEW.type
BEGIN
INSERT INTO auditoria_cuenta (old_balance,new_balance,old_iban,new_iban,old_type,new_type,user_action,created_at)
VALUES(old.balance,new.balance,old.iban,new.iban,old.tipo_cuenta,new.tipo_cuenta,'UPDATE',date('now'))
