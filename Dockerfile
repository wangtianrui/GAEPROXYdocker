FROM ubuntu:14.04
MAINTAINER Tianrking <tian.r.king@gmail.com>
ENV REFRESHED_AT 2016-02-28

RUN apt-get update -y && \
	apt-get install git -y && \
	apt-get install apache2 && \
	git clone https://git.coding.net/trk/XX-Net.git 
WORKDIR "XX-Net/"
CMD ./g0v && \
./start.sh
EXPOSE 8087
EXPOSE 80
