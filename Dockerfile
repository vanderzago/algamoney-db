FROM postgres:12.1-alpine

LABEL maintainer="Vander Zago"

# Configurar timezone
RUN cp /usr/share/zoneinfo/Brazil/East /etc/localtime \
    && echo "Brazil/East" >  /etc/timezone

COPY src/init-user-db.sh /docker-entrypoint-initdb.d/