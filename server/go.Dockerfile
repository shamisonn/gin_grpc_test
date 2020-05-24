FROM golang:1.14.3

ENV GO111MODULE=on

WORKDIR /go/src/grpc_test/server
COPY . .
RUN make build
CMD ["./grpc_test"]
EXPOSE 9090
