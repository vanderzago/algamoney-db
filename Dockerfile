FROM postgres:12.1-alpine

LABEL maintainer="Vander Zago"

COPY src/init-user-db.sh /docker-entrypoint-initdb.d/