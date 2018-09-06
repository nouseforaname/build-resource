FROM alpine

RUN apk --no-cache add wget
RUN apk --no-cache add ca-certificates
RUN apk --no-cache add bash
RUN apk --no-cache add jq

# Just get a random Fly version. We will sync in the script later
RUN wget -O /bin/fly "https://concourse.halfpipe.io/api/v1/cli?arch=amd64&platform=linux"
RUN chmod +x /bin/fly

RUN mkdir -p /opt/resource/
ADD check /opt/resource/check
ADD in /opt/resource/in
ADD out /opt/resource/out
