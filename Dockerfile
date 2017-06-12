FROM ubuntu:16.04

MAINTAINER Jorge Lucas <jorgep@ciandt.com>

ADD assets /assets

# Fix sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install dependencies
RUN apt-get update && \
apt-get install -y git build-essential curl wget software-properties-common

# Install JDK 8
RUN \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
add-apt-repository -y ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java8-installer wget unzip tar && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV PATH $PATH:$JAVA_HOME/bin

RUN echo "Configurando Maven"
# configurando o projeto
RUN apt-get update
RUN apt-get -y install maven
RUN mkdir /home/lanchefacil
RUN cd /home/lanchefacil && git init && git clone https://github.com/jorgejlp91/lancheFacil.git

RUN apt-get -y install nginx

RUN rm -f /etc/nginx/nginx.conf
RUN cp /assets/nginx.conf /etc/nginx/

#Instalacao do Jenkins

RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get update
RUN apt-get -y install jenkins

#Configuracao do Jenkins
RUN rm -f /var/lib/jenkins/config.xml
RUN cp /assets/jenkins_config.xml /var/lib/jenkins/config.xml
RUN cp /assets/config_job.xml /home/
#RUN cp /assets/jenkins-cli.jar /home/
RUN cd /home
RUN cp /assets/config_jenkins_job.sh /home/

RUN cp /assets/start.sh /home/
RUN chmod +x /home/start.sh
RUN chmod +x /home/config_jenkins_job.sh
