FROM ubuntu:20.04

RUN apt update
RUN apt install -y libcap2-bin vim less

ADD entrypoint.sh /

CMD ["bash", "/entrypoint.sh"]
