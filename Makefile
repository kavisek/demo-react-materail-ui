CONTAINER_NAME=material-ui-frontend

# NPM Commands
create_frontend:
	npm init react-app frontend


# Docker Commands [workspace]
build:
	docker build --pull --rm -f "Dockerfile.dev" -t ${CONTAINER_NAME} .

run:
	docker run --rm -it -p 3000:3000 ${CONTAINER_NAME}

exec: build
	docker run --entrypoint /bin/bash --rm -it -p 3000:3000 ${CONTAINER_NAME}