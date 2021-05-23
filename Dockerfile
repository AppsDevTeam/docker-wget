FROM alpine:3.7

RUN apk add --no-cache wget build-base libressl-dev && wget https://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz && tar -zxvf wget-1.21.1.tar.gz && cd wget-1.21.1/ && ./configure --prefix=/usr --sysconfdir=/etc --with-ssl=openssl && make && make install
