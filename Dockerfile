FROM python:3-alpine 

RUN apk update && apk add ca-certificates gnupg && rm -rf /var/cache/apk/*

RUN pip3 install twine==1.9.1

ENTRYPOINT ["twine"]
