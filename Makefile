.PHONY: build
build:
	docker build -t cwmr/cha.dweimer.com:amd64 .
	docker build -t cwmr/cha.dweimer.com:armhf -f Dockerfile.armhf .
