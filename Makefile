# XXX no versioning of the docker image

.PHONY: build push clean

build: .build_once
	@# Do not rebuild the image if there is no need

.build_once: Dockerfile
	docker build -t planitar/base .
	touch $@

push:
	docker push planitar/base

clean:
	docker rmi -f planitar/base || true
