FROM jenkins/inbound-agent:latest-trixie

USER root

RUN apt-get install curl
RUN /bin/curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-28.5.1-ce.tgz \
  && tar xzvf docker-28.5.1-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-28.5.1-ce.tgz

RUN groupadd docker
RUN usermod -aG docker jenkins

USER jenkins
