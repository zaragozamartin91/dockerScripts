#!/bin/bash
name=$1
tname=${name:-odb}
docker run -it --link $tname:odb sath89/oracle-12c /bin/bash -c '$ORACLE_HOME/bin/sqlplus system/oracle@//odb:1521/xe'

