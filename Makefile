NODE_ROOT := $(PWD)
IMG_NAME:= "reactor:8"

.PHONY: init nodeshell

init:
	docker build -t $(IMG_NAME) .

nodeshell:
	docker run -v "$(NODE_ROOT):/workdir" -w /workdir -p 3000:3000 --rm -ti $(IMG_NAME) bash
