FROM centos:centos6

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install haskell-platform

ADD . /src
WORKDIR /src/fibonacci
RUN ghc tests.hs Fibonacci.hs -o /src/tests

CMD ["/src/tests"]
