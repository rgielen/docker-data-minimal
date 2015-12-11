FROM scratch
MAINTAINER "Rene Gielen" <rgielen@apache.org>
ADD bin/docker-data-minimal /docker-data-minimal
CMD ["/docker-data-minimal"]
