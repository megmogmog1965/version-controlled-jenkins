#
# Jenkins for production operations.
#
# usage:
#   docker build -t darwin/jenkins-operation .
#   docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`/jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --name jenkins-operation darwin/jenkins-operation
#

FROM jenkins:2.60.3-alpine
MAINTAINER Yusuke Kawatsu "https://github.com/megmogmog1965"

# using root.
USER root

# setup local environment.
RUN apk upgrade --update && \
    apk add --no-cache --update docker curl
