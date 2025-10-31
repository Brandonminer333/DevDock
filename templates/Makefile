# Makefile

# Name for your Docker image
IMAGE_NAME = myproject

# Container name
CONTAINER_NAME = myproject-container

# Build the Docker image
build:
	docker build -t $(IMAGE_NAME) .

# Run the container (mounts your project folder so changes persist)
run:
	docker run -it --rm \
		--name $(CONTAINER_NAME) \
		-p 8888:8888 \
		-v $(PWD):/workspace \
		$(IMAGE_NAME)

# Stop all running containers (optional helper)
stop:
	docker stop $$(docker ps -q) || true

# Remove the image (clean build)
clean:
	docker rmi $(IMAGE_NAME) || true
