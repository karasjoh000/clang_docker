FROM ubuntu:18.04 

RUN apt-get update -y 
RUN apt-get install gcc -y
RUN apt-get install clang -y 