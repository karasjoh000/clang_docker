FROM ubuntu:18.04 

RUN apt-get update -y 
RUN apt-get install gcc -y
RUN apt-get install clang -y 
RUN apt-get install man -y 


RUN rm /etc/dpkg/dpkg.cfg.d/excludes
# Reinstall all currently installed packages in order to get the man pages back
RUN apt-get update && \
    dpkg -l | grep ^ii | cut -d' ' -f3 | xargs apt-get install -y --reinstall && \
    rm -r /var/lib/apt/lists/*