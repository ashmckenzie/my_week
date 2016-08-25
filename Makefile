SOURCEDIR="."
SOURCES := $(shell find $(SOURCEDIR) -name '*.go')

BINARY=my_week
BINARY_RELEASE=bin/${BINARY}_${VERSION}

VERSION=$(shell cat VERSION)

.DEFAULT_GOAL: $(BINARY)

$(BINARY): generate_includes bin_dir $(SOURCES) 
	VERSION="${VERSION}" go build -o ${BINARY_RELEASE}_darwin_amd64 -i main.go

.PHONY: run
run: generate_includes
	VERSION="${VERSION}" go run main.go $(filter-out $@, $(MAKECMDGOALS))

.PHONY: generate_includes
generate_includes: generate_secrets

.PHONY: generate_secrets
generate_secrets:
	@VERSION="${VERSION}" go generate secrets/secrets.go

.PHONY: bin_dir
bin_dir:
	@mkdir -p bin

.PHONY: clean
clean:
	@rm -f ${BINARY} ${BINARY}_*
