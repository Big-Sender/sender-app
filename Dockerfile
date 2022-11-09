FROM golang:1.16-alpine

# Compile app
WORKDIR /app
RUN make build

COPY /app/bin/sender-app /app/sender-app

EXPOSE 3000

ENTRYPOINT ["sender-app"]