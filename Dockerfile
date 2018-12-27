FROM debian:stretch

LABEL maintainer="Hualet Wang<mr.asianwang@gamil.com>"
LABEL description="deepin stable docker image."

RUN echo "deb [trusted=yes] http://packages.deepin.com/enterprise/ camel main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src [trusted=yes] http://packages.deepin.com/enterprise/ camel main contrib non-free" >> /etc/apt/sources.list
RUN echo "202.141.160.114 packages.deepin.com" > /etc/hosts
RUN apt update && apt dist-upgrade -y
