FROM golang:1.7.4-alpine

ENV SOURCES /go/src/github.com/pamelag/go-microservice-demo/

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install -a

ENTRYPOINT go-microservice-demo
EXPOSE 8080