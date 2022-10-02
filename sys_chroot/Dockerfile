FROM ubuntu:20.04

RUN apt update
RUN apt install -y libcap2-bin vim less gcc

#ADD Makefile /root/
#ADD reverse-shell.c /root/

ADD entrypoint.sh /
#RUN chmod +x /entrypoint.sh


RUN mkdir /jail

#RUN cp /usr/bin/bash /jail
#RUN mkdir -p /jail/lib/x86_64-linux-gnu
#RUN mkdir /jail/lib64
#RUN cp /lib/x86_64-linux-gnu/libtinfo.so.6 /jail/lib/x86_64-linux-gnu/libtinfo.so.6
#RUN cp /lib/x86_64-linux-gnu/libdl.so.2 /jail/lib/x86_64-linux-gnu/libdl.so.2
#RUN cp /lib/x86_64-linux-gnu/libc.so.6 /jail/lib/x86_64-linux-gnu/libc.so.6
#RUN cp /lib64/ld-linux-x86-64.so.2 /jail/lib64/ld-linux-x86-64.so.2



ADD break_chroot.c /jail
RUN gcc /jail/break_chroot.c -o /jail/break_chroot


CMD ["bash", "/entrypoint.sh"]
