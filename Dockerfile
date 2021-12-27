FROM golang

WORKDIR /go/src/app

COPY . .

RUN go mod vendor
RUN go build -o /app

CMD ["/app"]