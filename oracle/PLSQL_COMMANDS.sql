/* connect to sqlplus (PLSQL terminal) */
/* system is user , oracle is password , xe is the Oracle service name */
sqlplus system/oracle@//localhost:1521/xe 

/* create a permanent tablespace */
CREATE TABLESPACE tbs_perm_01  DATAFILE 'tbs_perm_01.dat'     SIZE 20M  ONLINE;

/* create a temporary tablespace */
CREATE TEMPORARY TABLESPACE tbs_temp_01  TEMPFILE 'tbs_temp_01.dbf'    SIZE 5M    AUTOEXTEND ON;

/* In essence, a schema is created in Oracle when a user is created... */
CREATE USER smithj  IDENTIFIED BY pwd4smithj  DEFAULT TABLESPACE tbs_perm_01  TEMPORARY TABLESPACE tbs_temp_01  QUOTA 20M on tbs_perm_01;


/* The next step in setting up your schema is to assign "system privileges" to the new user smithj. */
GRANT create session TO smithj;
GRANT create table TO smithj;
GRANT create view TO smithj;
GRANT create any trigger TO smithj;
GRANT create any procedure TO smithj;
GRANT create sequence TO smithj;
GRANT create synonym TO smithj;

/* create a table */
CREATE TABLE smithj.customers( customer_id number(10) NOT NULL,  customer_name varchar2(50) NOT NULL,  city varchar2(50));

/* describe a table */
DESCRIBE SMITHJ.customers;

/* show schema tables */
SELECT DISTINCT OWNER, OBJECT_NAME   FROM DBA_OBJECTS WHERE OBJECT_TYPE = 'TABLE'   AND OWNER = 'SMITHJ';

INSERT INTO SMITHJ.customers VALUES (1,'martin','buenos aires');


/* create table with xmltype */
CREATE TABLE SMITHJ.warehouses(  warehouse_id NUMBER(4),  warehouse_spec XMLTYPE,  warehouse_name VARCHAR2(35),  location_id NUMBER(4));

/* insert xmldata into table with xmltype */
INSERT INTO SMITHJ.warehouses VALUES (100, XMLType('<Warehouse whNo="100"><Building>Owned</Building></Warehouse>'), 'Tower Records', 1003);

