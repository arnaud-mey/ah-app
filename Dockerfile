# Start from a golang base image
FROM golang:1.22 AS builder

WORKDIR /app

#RUN go mod download

COPY . .

RUN GOOS=linux go build -o /hello-app ./cmd/hello-app

FROM gcr.io/distroless/cc-debian12:latest

COPY --from=builder /hello-app /

EXPOSE 8080

CMD ["/hello-app"]
