# syntax=docker/dockerfile:1

FROM postgres:14-alpine
ADD ./init-db.sh /docker-entrypoint-initdb.d/
ADD ./db.dump.sql /db-dumps/
