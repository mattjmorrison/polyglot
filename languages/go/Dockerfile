FROM centos:centos6

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install golang

ADD . /src
WORKDIR /src/fibonacci

# CMD ["gotest"]
CMD ["go", "test", "fibonacci_test.go", "fibonacci.go", "-v"]

