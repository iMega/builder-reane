build:
	@docker run --rm \
		-v $(CURDIR):/data \
		-v $$HOME/.node-cache:/cache \
		leanlabs/npm-builder \
		npm install

init:
	@docker run --rm \
		-v $(CURDIR):/data \
		-w /data \
		-v $$HOME/.node-cache:/cache \
		node:latest\
		node_modules/.bin/react-native init testProject
