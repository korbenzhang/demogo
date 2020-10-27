FROM golang:1.15-alpine as builder

WORKDIR /app

ENV GOPROXY=https://goproxy.cn,direct

COPY . .

RUN CGO_ENABLED=0 go build -ldflags "-s -w" -o server 

CMD ["./server"]

#ENTRYPOINT ["./server"]

