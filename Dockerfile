FROM golang:1.20.7-alpine
LABEL maintainer="WMYeah <test@test.com>"
WORKDIR /app
COPY ./ .
RUN apk add build-base
RUN go test -c -o ./test github.com/george012/zilliqa_sdk_go/provider
RUN CI=true go tool test2json -t ./test -test.v
