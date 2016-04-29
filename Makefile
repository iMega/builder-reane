build:
	@docker run --rm \
		-v $(CURDIR):/data \
		-w /data \
		-v $$HOME/.node-cache:/cache \
		node:6 \
		npm install

init:
	@docker run --rm \
		-v $(CURDIR):/data \
		-w /data \
		-v $$HOME/.node-cache:/cache \
		node:latest\
		node_modules/.bin/react-native init testProject
