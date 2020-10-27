
build:
	docker build -t demogo .

serve:
	docker run -d -p 80:80 demogo 

run:
	docker run -p 80:80 demogo 

up:
	docker-compose up

sh:
	docker run -it demogo sh

stop:
	docker stop demogo


