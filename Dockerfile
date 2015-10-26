FROM ubuntu
MAINTAINER <Zhanhao Wong>

RUN sudo apt-get update\
	sudo apt-get install python-gevent python-pip\
	pip install shadowsocks

ADD ./shadowsocks.json /etc/shadowsocks.json

VLOUME ["/etc/shadowsocks"]

ENTRYPOINT ["ssserver", "-c", "/etc/shadowsocks/shadowsocks.json"]

EXPOSE 8388