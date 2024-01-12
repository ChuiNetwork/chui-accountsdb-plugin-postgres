#!/usr/bin/env bash

set -e
sudo /etc/init.d/postgresql start
PGPASSWORD=chui psql -U chui -p 5432 -h localhost -w -d chui -f scripts/create_schema.sql
