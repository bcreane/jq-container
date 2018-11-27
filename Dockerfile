
#FROM alpine:3.4
FROM scratch
MAINTAINER Brendan <brendan@tigera.io>

COPY jq-linux64 /usr/bin/jq

ENTRYPOINT ["/usr/bin/jq"]
CMD sh
