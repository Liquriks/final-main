FROM golang:1.22

WORKDIR /app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /github.com/liquriks/final-main

CMD ["/main"]