#!/bin/sh

export PGPASSWORD=${PG_PASS}

if [ "$(psql -h ${PG_HOST} -p ${PG_PORT} -U ${PG_USER} -d ${PG_DB} -At -c 'SELECT * FROM sem.collectorserver WHERE serverid = 2;' | cut -d \| -f 1 | grep -wc 2)" = '1' ]; 
then
  echo "DB ${PG_DB}.Collector emqx exist"      
else 
  echo "Create collector"
  psql -v ON_ERROR_STOP=1 -h ${PG_HOST} -p ${PG_PORT} -U ${PG_USER} -d ${PG_DB} <<-EOSQL
      INSERT INTO sem.collectorserver (serverid, ip, host, dn, port, comment) VALUES (2, 'emqx', 'emqx', 'emqx', 1883, 'Сервер сбора по умолчанию');
EOSQL
fi
