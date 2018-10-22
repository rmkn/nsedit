FROM rmkn/php7-centos7
MAINTAINER rmkn

RUN yum -y install git
RUN yum -y install --enablerepo=remi,remi-php72 php-pdo

WORKDIR /var/www/
RUN git clone https://github.com/tuxis-ie/nsedit.git

COPY entrypoint.sh /
COPY vhost.conf /etc/httpd/conf.d/
COPY init.sh /tmp/
RUN /tmp/init.sh

ENTRYPOINT ["/entrypoint.sh"]
