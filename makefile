GO ?= go
GOFMT ?= gofmt "-s"
TARGET ?= main.go
PROJECT_NAME = gin_grpc_test
EXECUTE_FILENAME = $(PROJECT_NAME)

.PHONY: run
run:
	$(GO) run $(TARGET)

.PHONY: build
build:
	$(GO) build -o $(EXECUTE_FILENAME)

.PHONY: clean
clean:
	rm $(EXECUTE_FILENAME)

.PHONY: test
test:
	$(GO) test -v -covermode=count

.PHONY: fmt
fmt:
	$(GOFMT) -w $(GOFILES)
