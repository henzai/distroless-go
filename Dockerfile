FROM golang:1.11.2-stretch as build-env

WORKDIR /go/src/app
ADD . /go/src/app

RUN go get -d -v ./...
RUN go install -v ./...

FROM gcr.io/distroless/base
COPY --from=build-env /go/bin/app /
CMD ["/app"]