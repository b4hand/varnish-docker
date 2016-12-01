FROM phusion/baseimage:0.9.19

RUN curl https://repo.varnish-cache.org/GPG-key.txt | apt-key add - \
  && echo "deb https://repo.varnish-cache.org/ubuntu/ trusty varnish-4.1" \
    > /etc/apt/sources.list.d/varnish-cache.list \
  && apt-get update && apt-get install -y varnish && rm /etc/init.d/varnish* /etc/logrotate.d/varnish

ENV VARNISH_OPTIONS=""
ENV VARNISHNCSA_LOGFORMAT='%{X-Forwarded-For}i %t %r %s %b "%{User-agent}i"'

COPY varnish /etc/service/varnish
COPY varnishncsa /etc/service/varnishncsa

EXPOSE 80
EXPOSE 6802
