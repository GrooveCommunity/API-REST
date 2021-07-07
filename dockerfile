#imagem criada por Ygor Pereira de Sá (DevOps)
 
 FROM golang:latest

 WORKDIR /app

 RUN export GO111MODULE=ON

 COPY go.mod .
 COPY go.sum .
 COPY main.go .
 
 COPY . .
 RUN go get github.com/gorilla/mux
 RUN go get google.golang.org/api
 RUN go build
 EXPOSE 8000
 CMD [ "./main.go" ]
