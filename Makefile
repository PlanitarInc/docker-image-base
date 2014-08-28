# XXX no versioning of the docker image

ifneq ($(NOCACHE),)
  NOCACHEFLAG=--no-cache
endif

.PHONY: build push clean

build:
	docker build ${NOCACHEFLAG} -t planitar/base .

push:
	docker push planitar/base

clean:
	docker rmi -f planitar/base || true
