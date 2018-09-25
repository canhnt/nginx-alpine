REGISTRY = canhnt

TAG = v1.0.0
IMAGE = $(REGISTRY)/nginx-alpine
DOCKERFILE = Dockerfile

.PHONY: image
image: 	
		docker build --tag $(IMAGE):$(TAG) -f $(DOCKERFILE) .
		docker push $(IMAGE)

