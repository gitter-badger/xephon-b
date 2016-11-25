#!/usr/bin/env bash

echo "waiting for cassandra to start"
# TODO: allow config it from docker-compose.yml
wait-for-it c1:9042 -t 60
echo "cassandra started"
/opt/kairosdb/bin/kairosdb.sh run
