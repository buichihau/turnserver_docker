FROM debian:10

MAINTAINER Hau Bui <buichihau98@gmail.com>

USER root

RUN apt-get update -y \
    && apt-get install coturn -y 

COPY ./run.sh /usr/bin/run.sh

RUN chmod -R 777 /usr/bin/run.sh

RUN sed -i -e 's/\r$//' /usr/bin/run.sh

ENTRYPOINT ["/usr/bin/run.sh"]