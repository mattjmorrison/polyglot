FROM centos:centos6

RUN yum -y update
RUN yum -y install epel-release
RUN yum -y install nodejs npm

ADD . /src
RUN cd /src; npm install

CMD ["/src/node_modules/.bin/jasmine-node", "--coffee", "/src"]

