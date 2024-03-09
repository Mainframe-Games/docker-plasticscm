FROM ubuntu:20.04

#  Install dependencies
RUN apt update -y && apt-get install -y \
    wget apt-transport-https gnupg2

#  Install plasticscm
RUN echo "deb https://www.plasticscm.com/plasticrepo/stable/ubuntu/ ./" | tee /etc/apt/sources.list.d/plasticscm-stable.list
RUN wget https://www.plasticscm.com/plasticrepo/stable/ubuntu/Release.key -O - | apt-key add -
RUN apt-get update
RUN apt-get install -y plasticscm-complete

RUN cm version