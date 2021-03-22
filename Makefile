APP_NAME := curlconverter
GIT_SHORT_COMMIT_HASH ?= $(shell git rev-parse --short $(shell git rev-list -1 HEAD))
GITHUB_PACKAGE := docker.pkg.github.com/martinsirbe/$(APP_NAME)/$(APP_NAME)

.PHONY: docker-image
docker-image:
	docker build -t $(GITHUB_PACKAGE):$(GIT_SHORT_COMMIT_HASH) .

.PHONY: publish-docker-image
publish-docker-image:
	docker push $(GITHUB_PACKAGE):$(GIT_SHORT_COMMIT_HASH)
