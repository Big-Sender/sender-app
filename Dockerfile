FROM golang:1.16-alpine

MAINTAINER darren128 <dmrichards128@gmail.com>
USER darren128

# Compile app
WORKDIR /app
COPY main.go .
RUN make build

COPY /app/bin/sender-app /app/sender-app

EXPOSE 3000

ENTRYPOINT ["sender-app"]