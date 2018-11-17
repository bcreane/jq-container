BUILD_IMAGE?=quay.io/bcreane/jq
BUILD_VERSION?=latest
JQ-VERSION?="1.6"

push-image: build-image
	docker push $(BUILD_IMAGE):$(BUILD_VERSION)

build-image: jq-linux64
	docker build -t $(BUILD_IMAGE):$(BUILD_VERSION) -f Dockerfile .

clean:
	rm -f jq-linux64
	docker rmi -f $(BUILD_IMAGE):$(BUILD_VERSION)

.PHONY: jq-linux64
jq-linux64:
	wget -O $@ https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
	chmod +x $@
	touch $@
