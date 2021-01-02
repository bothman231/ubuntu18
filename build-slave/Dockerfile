FROM jenkins/jnlp-slave:3.29-1

USER root
RUN apt update -y \
  && apt -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common python sudo
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
  && python get-pip.py
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) edge" \
  && apt update -y \
  && apt -y install docker-ce \
  && apt clean
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER jenkins

