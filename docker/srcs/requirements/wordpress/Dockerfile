FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install php-fpm php-mysql -y
RUN apt install curl -y

COPY ./tools/run.sh /.
COPY ./tools/wp-config.php /.

CMD ["bash", "run.sh"]