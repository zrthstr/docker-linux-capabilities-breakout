FROM ubuntu:20.04

RUN apt update
RUN apt install -y libcap2-bin gcc vim less make kmod linux-headers-5.4.0-117-generic

ADD Makefile /root/
ADD reverse-shell.c /root/

ADD entrypoint.sh /


RUN chmod +x /entrypoint.sh
CMD ["bash", "/entrypoint.sh"]
