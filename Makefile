# XXX no versioning of the docker image

.PHONY: build push clean

build:
	docker build -t planitar/base .

push:
	docker push planitar/base

clean:
	docker rmi -f planitar/base || true
