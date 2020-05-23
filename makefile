GO ?= go
GOFMT ?= gofmt "-s"
TARGET ?= main.go

.PHONY: run
run:
	$(GO) run $(TARGET)

.PHONY: test
test:
	$(GO) test -v -covermode=count

.PHONY: fmt
fmt:
	$(GOFMT) -w $(GOFILES)
