FROM golang:1.12-alpine

COPY . /go/src/beeserver
WORKDIR /go/src/beeserver

RUN apk --no-cache add git
RUN go get -v ./
RUN go build

CMD beeserver

EXPOSE 8080

