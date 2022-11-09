FROM golang:1.16-alpine

MAINTAINER darren128 <dmrichards128@gmail.com>

COPY /app/bin/sender-app /app/sender-app

USER darren128

WORKDIR /app

EXPOSE 3000

ENTRYPOINT ["sender-app"]