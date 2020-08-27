FROM alpine:latest
WORKDIR /var/lib/oc 
RUN wget --no-verbose https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz 
RUN	 gunzip openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz 
RUN tar -xvf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar 
ENV PATH=$PATH:/var/lib/oc/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit
