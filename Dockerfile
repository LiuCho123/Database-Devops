FROM mysql:8.0

COPY ./01_creacion_base_datos.sql /docker-entrypoint-initdb.d/1-creacion.sql
COPY ./02_backup_y_mantenimiento.sql /docker-entrypoint-initdb.d/2-mantenimiento.sql

EXPOSE 3306
