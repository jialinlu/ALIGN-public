#
# Base container starts here
#
FROM ubuntu:18.04 as align_base_using_install

#
# Set required environment variables
#
ENV http_proxy=$http_proxy
ENV https_proxy=$https_proxy

# Update packages
RUN apt-get -qq update && DEBIAN_FRONTEND=noninterative apt-get -qq install \
    git \
&&    apt-get -qq clean

ENV ALIGN_HOME=/ALIGN-public

COPY . $ALIGN_HOME

WORKDIR $ALIGN_HOME
ENV USER=root

RUN "./install.sh"
