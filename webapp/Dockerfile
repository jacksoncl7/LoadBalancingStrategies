FROM golang:1.18-alpine
WORKDIR /build
COPY . .
#RUN CGO_ENABLED=0 GOARCH=amd64  go build -ldflags "-s -w -extldflags '-static'" -o ./app

ENTRYPOINT ["go", "run", "main.go"]
