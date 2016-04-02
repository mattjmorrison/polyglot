FROM centos:centos6

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install python

ADD . /src
WORKDIR /src

CMD ["python", "test_fibonacci.py"]
