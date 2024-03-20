.PHONY: build run

build:
	docker build -t my-k8s-app:latest .

run: build
	docker run -p 8080:80 my-k8s-app:latest

