FROM golang:1.22

WORKDIR /final-main

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /final-main

CMD ["/final-main"]