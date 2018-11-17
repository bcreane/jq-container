
#FROM alpine:3.4
FROM scratch
MAINTAINER Brendan <brendan@tigera.io>

COPY jq-linux64 /usr/bin/jq
#RUN apk update && apk add jq

ENTRYPOINT ["/usr/bin/jq"]
CMD sh
