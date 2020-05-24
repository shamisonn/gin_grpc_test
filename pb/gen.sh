#!/bin/sh

protoc -I=. helloworld.proto \
    --js_out=import_style=commonjs:../client/src/pb \
    --grpc-web_out=import_style=typescript,mode=grpcwebtext:../client/src/pb \
    --go_out=plugins=grpc:../server/helloworld
