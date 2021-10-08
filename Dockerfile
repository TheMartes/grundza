FROM golang:1.16-alpine

WORKDIR /grundza

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY * ./

RUN go build -o /grundza

EXPOSE 8080

CMD ["/grundza"]