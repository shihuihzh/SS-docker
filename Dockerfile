FROM alpine
MAINTAINER <Zhanhao Wong>

RUN apk add --no-cache py-pip

RUN pip install shadowsocks

ADD ./shadowsocks.json /etc/shadowsocks/shadowsocks.json

VOLUME ["/etc/shadowsocks"]

ENTRYPOINT ["ssserver", "-c", "/etc/shadowsocks/shadowsocks.json"]

EXPOSE 8388
