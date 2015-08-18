FROM ubuntu:trusty
MAINTAINER andrew.rothstein@gmail.com

RUN apt-get update -y && \
 apt-get install software-properties-common -y && \
 add-apt-repository ppa:staticfloat/julia-deps -y && \
 add-apt-repository ppa:staticfloat/juliareleases -y && \
 apt-get update -qq -y
RUN apt-get install -y julia
RUN julia --version