build:
	@docker build -t reactor .

device:
	@docker run -d -v $(CURDIR):/app -p 8081:8081 -p 9013:9013 --name reactor reactor sh -c 'npm run device'

web:
	@docker run -d -v $(CURDIR):/app -p 8081:8081 -p 9013:9013 --name reactor reactor sh -c 'npm run web'

bash:
	@docker run -it --rm -v $(CURDIR):/app -p 8081:8081 -p 9013:9013 --name reactor reactor bash

clean:
	@docker rm -f reactor

dep:
	@docker run --rm -it \
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
