.PHONY: build
build:
	hugo
	docker build -t cwmr\cha.dweimer.com .

.PHONY: serve
serve:
	hugo server -D

.PHONY: run
run: build
	docker run --rm -d -p 1313:80 cwmr\cha.dweimer.com