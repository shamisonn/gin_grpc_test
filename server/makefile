GO ?= go
GOFMT ?= gofmt "-s"
GOFILES := $(shell find . -name "*.go")

TARGET ?= main.go
PROJECT_NAME = grpc_test
EXECUTE_FILENAME = $(PROJECT_NAME)

.PHONY: run
run: $(EXECUTE_FILENAME)
	./$(EXECUTE_FILENAME)

$(EXECUTE_FILENAME): build

.PHONY: build
build: $(GOFILES)
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
