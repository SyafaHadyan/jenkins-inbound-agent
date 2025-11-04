FROM jenkins/jenkins:latest-jdk21

USER root

RUN curl -fsSL https://get.docker.com/get-docker.sh | sh
RUN groupadd docker
RUN usermod -aG docker jenkins

USER jenkins
