FROM ubuntu:18.04

######################
# Prerequisites
#######################
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -yq \
apt-utils \

# gnupg requirement
dirmngr \
gnupg \

# curl requirement
ca-certificates \
curl \

# google-cloud-sdk requirement
lsb-release \

# useful utilities for debugging within the docker
unzip \
nano \
vim \
procps \

# python requirements
checkinstall \
build-essential \
zlib1g-dev \

# pip requirements
libbz2-dev \
libreadline-dev \
libsqlite3-dev \
llvm \
libncurses5-dev \
libncursesw5-dev \
tk-dev \
libffi-dev \
liblzma-dev \
python-openssl \
python3-pip \

# install script requirements
sudo \
wget \
locales \
git \
    
# openjdk 11
default-jre \
default-jdk \

# Ki-S tool dependencies
libxml2-dev \
libcurl4-gnutls-dev \
nodejs \
r-base \
r-cran-magrittr \
r-cran-nmf \
r-cran-irlba \
r-cran-rcurl \
r-cran-xml \
r-cran-phangorn \
r-cran-shiny \
blast2 \
ncbi-blast+ \
libncbi6 \
mummer \
liblist-moreutils-perl

# Install Ki-s tool. Use singlequotes as doublequotes gives error when specifying packages.
RUN Rscript -e "install.packages(c('BiocManager','htmlwidgets'), dependencies=TRUE)"
RUN apt-get -qy autoremove
RUN pip3 install pyani && git clone https://git.renater.fr/anonscm/git/ki-s/ki-s.git && cd /ki-s && ./configure
