FROM golang:1.21.5

WORKDIR /app

COPY go.sum go.mod *.go ./

RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o /server
CMD ["/server"]