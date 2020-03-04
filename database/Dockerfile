FROM postgres:latest
ADD . /temp/ChatApplication
WORKDIR /temp/ChatApplication
COPY createdb.sql /docker-entrypoint-initdb.d

