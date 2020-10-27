
build:
	docker build -t demogo .

serve:
	docker run -d -p 8080:8080 demogo 

run:
	docker run -p 8080:8080 demogo 

up:
	docker-compose up

sh:
	docker run -it demogo sh

stop:
	docker stop demogo

get:
	go get -v github.com/korbenzhang/demogo

run2:
	docker run --rm -p 8080:8080 golang sh -c "go get github.com/korbenzhang/demogo/... && exec demogo"

test:
	curl http://localhost:8080


