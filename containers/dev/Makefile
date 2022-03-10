IMAGE_NAME=kubeflow-demo-dev
CONTAINER_NAME=$(IMAGE_NAME)-1

create: build stop
	docker run -it --entrypoint bash --name $(CONTAINER_NAME) \
		-v $(PWD)/../..:/app \
		-v $(HOME)/.config/kfp/context.json:/root/.config/kfp/context.json \
		-v $(HOME)/.kube:/root/.kube \
		-p 3010-3020:3010-3020 $(IMAGE_NAME)
shell: start
	docker exec -it $(CONTAINER_NAME) bash
stop:
	docker rm $(CONTAINER_NAME) || true
build:
	docker build . -t kubeflow-demo-dev 
start:
	docker start $(CONTAINER_NAME)
