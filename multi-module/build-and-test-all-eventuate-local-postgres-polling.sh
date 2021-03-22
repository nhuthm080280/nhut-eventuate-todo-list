#! /bin/bash

. ./set-env-postgres.sh

export EXTRA_PORTS_TO_WAIT_FOR=8099
export EXTRA_INFRASTRUCTURE_SERVICES=postgrespollingcdc
export EVENTUATE_LOCAL=yes
export database=postgres
export mode=polling

./_build-and-test-all.sh  $* -P eventuateDriver=local
