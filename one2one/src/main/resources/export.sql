--------------------------------------------------------
--  File created - Thursday-August-28-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "TEST"."EMPLOYEE" 
   (	"EMPNO" NUMBER, 
	"USERNAME" VARCHAR2(20 BYTE), 
	"DEPTNO" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TEST.EMPLOYEE
SET DEFINE OFF;
Insert into TEST.EMPLOYEE (EMPNO,USERNAME,DEPTNO) values (1,null,null);
Insert into TEST.EMPLOYEE (EMPNO,USERNAME,DEPTNO) values (2,null,null);
Insert into TEST.EMPLOYEE (EMPNO,USERNAME,DEPTNO) values (3,null,null);
--------------------------------------------------------
--  DDL for Index SYS_C008627
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C008627" ON "TEST"."EMPLOYEE" ("EMPNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "TEST"."EMPLOYEE" ADD PRIMARY KEY ("EMPNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
