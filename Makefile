build:
	@docker build -t reactor .

serve:
	@docker run -d -v $(CURDIR):/app -p 8081:8081 --name reactor reactor sh -c 'react-native start & sleep 10;gulp'

clean:
	@docker rm -f reactor

build2:
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
