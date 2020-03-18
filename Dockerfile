FROM amazonlinux:2018.03

RUN curl -LO https://rpm.nodesource.com/setup_12.x && \
    echo "b0b051bee21f8f771ac8b4c20da179bd setup_12.x" | md5sum -c - && \
    /bin/sh setup_12.x && \
    mkdir -m 777 -pv /.npm /.config && \
    yum -y install \
        gcc \
        gcc-c++ \
        mysql56 \
        mysql56-devel \
        python36 \
        python36-devel \
        git \
        gettext \
        nodejs \
        bzip2
