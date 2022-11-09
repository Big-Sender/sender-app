FROM golang:1.19-alpine

# Setup
RUN apk add alpine-sdk

# Compile app
WORKDIR /app
RUN make build

COPY /app/bin/sender-app /app/sender-app

EXPOSE 3000

ENTRYPOINT ["sender-app"]