FROM scratch
ADD bin/docker-data-minimal /docker-data-minimal
CMD ["/docker-data-minimal"]
