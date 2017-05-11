# Build the manager binary
FROM golang:1.17 as builder

WORKDIR /workspace

COPY hello-world.go .
COPY go.mod .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o hello-world .
