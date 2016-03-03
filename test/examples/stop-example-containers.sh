#!/bin/bash
#
# helper script to start example docker containers
#

pushd examples

docker-compose -f dc-juttle-engine.yml \
               -f cadvisor-influx/dc-cadvisor-influx.yml \
               -f postgres-diskstats/dc-postgres.yml \
               stop

docker-compose -f dc-juttle-engine.yml \
               -f cadvisor-influx/dc-cadvisor-influx.yml \
               -f postgres-diskstats/dc-postgres.yml \
               rm -f

popd
