FROM jenkinsci/jnlp-slave

USER root

RUN apt-get -y update && apt-get -y install sudo && apt-get clean

RUN adduser jenkins sudo
RUN passwd -d jenkins

USER jenkins
