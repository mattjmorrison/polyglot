FROM centos:centos6

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install ruby

ADD . /src
WORKDIR /src/fibonacci

CMD ["ruby", "tests.rb"]
