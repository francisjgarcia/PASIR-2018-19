FROM catatnight/postfix

MAINTAINER Francis "francisjgarcia94@gmail.com"

RUN apt-get update && \
  apt-get install -y mailutils && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 25

ADD ["datos/cacert.pem","/etc/postfix"]
ADD ["datos/main.cf","/etc/postfix"]
ADD ["datos/sasl_passwd","/etc/postfix"]

RUN postmap /etc/postfix/sasl_passwd && \
  chmod 600 /etc/postfix/sasl_passwd && \
  chmod 600 /etc/postfix/sasl_passwd

CMD ["sh", "-c", "service syslog-ng start ; service postfix start ; tail -F /var/log/mail.log"]
