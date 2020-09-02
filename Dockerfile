FROM  openshift/origin-cli:v3.11.0
ARG HELM_VERSION=v2.16.9
ENV HELM_HOME=/root/.helm
RUN apt-get -y install  gzip wget git
RUN wget https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz
RUN gunzip helm-${HELM_VERSION}-linux-amd64.tar.gz && tar -xvf helm-${HELM_VERSION}-linux-amd64.tar 
RUN helm init --client-only && chgrp -R root /root/.helm && chmod -R 770 /root/.helm
