FROM lpenz/debian-lenny-i386:latest
MAINTAINER Leonid Myravjev <asm@asm.pp.ru>


RUN apt-key update && apt-get update  && \
    DEBIAN_FRONTEND=noninteractive apt-get install --force-yes -y --no-install-recommends \
    git vim cups unzip

#WORKDIR /opt/shinobi.git
#RUN git clone https://gitlab.com/Shinobi-Systems/Shinobi.git .

ADD 6000_6010_deb_1.01_20110210.zip . 
ADD scripts/inst.sh  inst.sh
ADD scripts/cupsd.conf  cupsd.conf 
RUN ./inst.sh
