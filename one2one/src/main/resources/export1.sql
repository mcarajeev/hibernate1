--------------------------------------------------------
--  File created - Thursday-August-28-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PERSONALDETAILS
--------------------------------------------------------

  CREATE TABLE "TEST"."PERSONALDETAILS" 
   (	"EMPNO" NUMBER, 
	"FIRSTNAME" VARCHAR2(20 BYTE), 
	"LASTNAME" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TEST.PERSONALDETAILS
SET DEFINE OFF;
--------------------------------------------------------
--  Ref Constraints for Table PERSONALDETAILS
--------------------------------------------------------

  ALTER TABLE "TEST"."PERSONALDETAILS" ADD CONSTRAINT "EMPNO" FOREIGN KEY ("EMPNO")
	  REFERENCES "TEST"."EMPLOYEE" ("EMPNO") ENABLE;
