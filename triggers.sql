
CREATE SEQUENCE Banco_seq MINVALUE 1 MAXVALUE 99999999999999999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Agencia_seq MINVALUE 1 MAXVALUE 99999999999999999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Conta_seq MINVALUE 1 MAXVALUE 99999999999999999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Funcionario_seq MINVALUE 1 MAXVALUE 99999999999999999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Cliente_seq MINVALUE 1 MAXVALUE 99999999999999999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Emprestimo_seq MINVALUE 1 MAXVALUE 99999999999999999999999 INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Pagamento_seq MINVALUE 1 MAXVALUE 99999999999999999999999 INCREMENT BY 1 START WITH 1;

CREATE OR REPLACE TRIGGER BANCO_TRG
BEFORE INSERT ON Banco 
FOR EACH ROW 
BEGIN <<COLUMN_SEQUENCES>>  
BEGIN IF :NEW.id_banco IS NULL THEN 
SELECT BANCO_SEQ.NEXTVAL 
INTO :NEW.id_banco
FROM DUAL; 
END IF; 
END COLUMN_SEQUENCES; 
END; 


CREATE OR REPLACE TRIGGER AGENCIA_TRG
BEFORE INSERT ON Agencia 
FOR EACH ROW 
BEGIN <<COLUMN_SEQUENCES>>  
BEGIN IF :NEW.numero_agencia IS NULL THEN 
SELECT AGENCIA_SEQ.NEXTVAL 
INTO :NEW.numero_agencia
FROM DUAL; 
END IF; 
END COLUMN_SEQUENCES; 
END; 



CREATE OR REPLACE TRIGGER CONTA_TRG
BEFORE INSERT ON Conta 
FOR EACH ROW 
BEGIN <<COLUMN_SEQUENCES>>  
BEGIN IF :NEW.numero_conta IS NULL THEN 
SELECT CONTA_SEQ.NEXTVAL 
INTO :NEW.numero_conta
FROM DUAL; 
END IF; 
END COLUMN_SEQUENCES; 
END; 


CREATE OR REPLACE TRIGGER FUNCIONARIO_TRG 
BEFORE INSERT ON Funcionario 
FOR EACH ROW 
BEGIN <<COLUMN_SEQUENCES>>  
BEGIN IF :NEW.id_funcionario IS NULL THEN 
SELECT FUNCIONARIO_SEQ.NEXTVAL 
INTO :NEW.id_funcionario
FROM DUAL; 
END IF; 
END COLUMN_SEQUENCES; 
END; 



CREATE OR REPLACE TRIGGER CLIENTE_TRG 
BEFORE INSERT ON Cliente 
FOR EACH ROW 
BEGIN <<COLUMN_SEQUENCES>>  
BEGIN IF :NEW.id_cliente IS NULL THEN 
SELECT CLIENTE_SEQ.NEXTVAL 
INTO :NEW.id_cliente
FROM DUAL; 
END IF; 
END COLUMN_SEQUENCES; 
END; 


CREATE OR REPLACE TRIGGER EMPRESTIMO_TRG 
BEFORE INSERT ON Emprestimo 
FOR EACH ROW 
BEGIN <<COLUMN_SEQUENCES>>  
BEGIN IF :NEW.id_emprestimo IS NULL THEN 
SELECT EMPRESTIMO_SEQ.NEXTVAL 
INTO :NEW.id_emprestimo
FROM DUAL; 
END IF; 
END COLUMN_SEQUENCES; 
END;



CREATE OR REPLACE TRIGGER PAGAMENTO_TRG
BEFORE INSERT ON Pagamento 
FOR EACH ROW 
BEGIN <<COLUMN_SEQUENCES>>  
BEGIN IF :NEW.id_pagamento IS NULL THEN 
SELECT PAGAMENTO_SEQ.NEXTVAL 
INTO :NEW.id_pagamento
FROM DUAL; 
END IF; 
END COLUMN_SEQUENCES; 
END;
