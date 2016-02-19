FROM alpine:latest

RUN apk add --no-cache python3 libacl
RUN apk add --no-cache --virtual=build-dependencies wget ca-certificates build-base acl-dev python3-dev openssl-dev
RUN wget "https://bootstrap.pypa.io/get-pip.py" -O /dev/stdout | python3
RUN pip3 install attic
RUN apk del build-dependencies
