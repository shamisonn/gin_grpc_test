# grpc_test

to learn grpc and golang programming

# doing/done

- [x] setup to build and do golang programming
    - create makefile
    - setup vimrc by gopls
- [x] setup go module
    - run `go mod init`
    - => generate go.mod
    - run `go build` by makefile
    - => generate go.sum
- [x] investigate to apitest(when resp type is json)
    - use `steinfletcher/apitest` 
    - see [example](https://github.com/steinfletcher/apitest/blob/master/examples/gin/api_test.go)
    - but I use protcol buffer for future ;(
    - => gin is not protcol buffer framework!!! my bad.
    - I thought that gin support grpc for SERVER, but I was wrong.
    - gin is just a http framework, not grpc.
    - gin suppoer grpc as CLIENT, so gin can connect grpc server.
    - ok. ok. ok.
- [ ] setup envoy image
    - use this: [grpc-example](https://github.com/grpc/grpc-web/tree/master/net/grpc/gateway/examples/helloworld)
- [ ] setup grpc
    - make grpc server use [example](https://github.com/grpc/grpc-web/tree/master/net/grpc/gateway/examples/helloworld)
    - set `pb/hello.proto`
- [ ] setup protocol buffer to makefile
- [ ] setup docker (or script) for deploy
- [ ] setup github ci
- [ ] 
- [ ] 
- [ ] 
