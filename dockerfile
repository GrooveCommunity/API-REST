FROM golang:latest

RUN /home/go/src/rest-api$ go mod init main.go

RUN home/go/src/REST-API$ export GO111MODULE=ON

RUN /home/go/src/rest-api$ go get github.com/gorilla/mux

RUN/home/go/src/rest-api$ go get google.golang.org/api

ENTRYPOINT [ "home/go/src/REST-API/ main" ]

EXPOSE 8000

/home/go/src/rest-api$ go run main.go
