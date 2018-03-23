.PHONY: build
build:
	docker run --rm -it -v $$PWD:/src jguyomard/hugo-builder hugo
	docker build -t cwmr/cha.dweimer.com .

.PHONY: serve
serve:
	docker run --rm -it -v $$PWD:/src jguyomard/hugo-builder hugo server -D

.PHONY: run
run: build
	docker run --rm -it -p 1313:80 cwmr/cha.dweimer.com
