#!/bin/bash
docker run -d --name odb -p 8080:8080 -p 1521:1521 sath89/oracle-12c


docker run -it --link wizardly_mccarthy:odb sath89/oracle-12c /bin/bash -c '$ORACLE_HOME/bin/sqlplus system/oracle@//odb:1521/xe'


sqlplus system/oracle@//odb:1521/xe 
