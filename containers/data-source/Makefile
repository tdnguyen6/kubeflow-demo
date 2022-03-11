IMAGE_NAME=kubeflow-demo-data-source
CONTAINER_NAME=$(IMAGE_NAME)-1
SHELL=zsh

create: build rm
	docker run -itd --name $(CONTAINER_NAME) \
		-v $(HOME):/home/user \
		-p 3021:3021 $(IMAGE_NAME)
shell: start
	docker exec -it -w $$(sed "s/$$USER/user/g" <<< $$PWD/../..) $(CONTAINER_NAME) $(SHELL)
stop:
	docker stop $(CONTAINER_NAME) || true
rm: stop
	docker rm $(CONTAINER_NAME) || true
build:
	docker build . -t $(IMAGE_NAME) --build-arg SHELL=$(SHELL)
start:
	docker start $(CONTAINER_NAME)
which-sh:
	echo $(SHELL)
