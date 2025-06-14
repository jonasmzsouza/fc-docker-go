# Etapa de build
FROM golang:1.21 AS builder

WORKDIR /app

COPY main.go .

# Compilação estática, reduzida
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o app main.go

# Imagem final mínima
FROM scratch

COPY --from=builder /app/app /app

ENTRYPOINT ["/app"]
