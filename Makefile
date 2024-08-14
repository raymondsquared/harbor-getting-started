.PHONY: login
login:
	docker login demo.goharbor.io

.PHONY: build
build: 
	docker build -t demo.goharbor.io/ray/random-image:1 .

.PHONY: deploy
deploy:
	docker push demo.goharbor.io/ray/random-image:1
