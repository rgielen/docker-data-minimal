FROM scratch
ADD bin/message /message
CMD ["/message"]
