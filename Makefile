IMAGES := $(shell docker images -f "dangling=true" -q)
CONTAINERS := $(shell docker ps -a -q -f status=exited)
IMAGE := pdfalto-builder
PWD=$(shell pwd)


build_bin:
	docker build -v $(PWD)/pdfalto:/home/pdfalto:z -t artturimatias/$(IMAGE) .

build:
	docker build -t artturimatias/$(IMAGE) .

clean:
	docker rm -f $(CONTAINERS)
	docker rmi -f $(IMAGES)


