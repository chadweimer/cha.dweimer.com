.PHONY: build
build:
	docker run --rm --privileged multiarch/qemu-user-static:register --reset
	docker build -t cwmr/cha.dweimer.com:amd64 .
	docker build -t cwmr/cha.dweimer.com:armhf -f Dockerfile.armhf .
