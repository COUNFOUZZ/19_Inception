FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt-get install mariadb-server -y

COPY ./conf/50-server.cnf   /etc/mysql/mariadb.conf.d/.
COPY ./run.sh   /.

CMD ["bash", "run.sh"]