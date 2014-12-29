
# Dockerfile spring-boot
# VERSION    1.0

FROM jeanblanchard/busybox-java:8

MAINTAINER Vadim Bauer <hello@z-rechnung.de>

RUN \
	mkdir /opt/spring-boot && \
	cd /opt/spring-boot && \
	wget http://repo1.maven.org/maven2/org/springframework/boot/spring-boot-cli/1.1.9.RELEASE/spring-boot-cli-1.1.9.RELEASE-full.jar && \
	ln -s spring-boot-cli-1.1.9.RELEASE-full.jar spring-boot && \
	echo -e "#!/bin/sh \njava -jar /opt/spring-boot/spring-boot" > /usr/bin/spring-boot && \	
	chmod 751 /usr/bin/spring-boot;

CMD ["spring-boot"]


