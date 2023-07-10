##
## digiserve/ab-db
##
## This is our database service for our AppBuilder.
##
## Docker Commands:
## ---------------
## $ docker build -t digiserve/ab-db:master .
## $ docker push digiserve/ab-db:master
##

ARG BRANCH=master

FROM mariadb:10

COPY ./conf.d/* /etc/mysql/conf.d

COPY ./init/* /docker-entrypoint-initdb.d

