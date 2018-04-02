FROM alpine:edge
MAINTAINER Daniel Guerra
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --update --no-cache i2pd sudo
RUN mkdir -p /var/lib/i2pd/.i2pd
RUN ln -s /var/lib/i2pd/certificates /var/lib/i2pd/.i2pd/certificates
RUN chown  i2pd:i2pd /var/lib/i2pd/.i2pd /var/lib/i2pd/.i2pd/certificates
ADD bin /bin
CMD ["cmd.sh"]
