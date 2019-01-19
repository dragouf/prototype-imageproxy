FROM golang:1.5.2

ADD . /go/src/github.com/oreillymedia/prototype-imageproxy

RUN cd /go/src/github.com/oreillymedia/prototype-imageproxy && go get ./...
RUN go install github.com/oreillymedia/prototype-imageproxy

ENV ADDRESS 0.0.0.0:3000

# CMD []
ENTRYPOINT ["/go/bin/prototype-imageproxy"]

EXPOSE 3000
