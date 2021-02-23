#!/bin/bash

#------------------------------------------------------------------------------
# Use this script to setup a local PostgreSQL instance on Docker
#------------------------------------------------------------------------------

docker pull postgres
docker run --name postgres1 \
    -e POSTGRES_PASSWORD="P@ssword1" \
    -d -p 5432:5432 postgres