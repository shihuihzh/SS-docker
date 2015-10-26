FROM ubuntu
MAINTAINER <Zhanhao Wong>

RUN sudo apt-get update && apt-get install -y \
python-gevent \
python-pip

RUN pip install shadowsocks

ADD ./shadowsocks.json /etc/shadowsocks.json

VOLUME ["/etc/shadowsocks"]

ENTRYPOINT ["ssserver", "-c", "/etc/shadowsocks/shadowsocks.json"]

EXPOSE 8388
