APP_NAME := curlconverter
GIT_SHORT_COMMIT_HASH ?= $(shell git rev-parse --short $(shell git rev-list -1 HEAD))

.PHONY: docker-image
docker-image:
	@docker build -t $(APP_NAME):$(GIT_SHORT_COMMIT_HASH) .
