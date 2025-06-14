# fc-docker-go

Este projeto é uma aplicação simples escrita em Go que imprime a mensagem:

```
Full Cycle Rocks!!
```

## 🚀 Pré-requisitos

- [Go 1.21+](https://go.dev/dl/)
- [Docker](https://www.docker.com/products/docker-desktop/) instalado

---

## 💻 Executando Localmente (sem Docker)

1. Clone o repositório:

   ```bash
   git clone https://github.com/jonasmzsouza/fc-docker-go.git
   cd fc-docker-go
   ```

2. Compile o binário:

   ```bash
   go build -o app main.go
   ```

3. Execute o binário:

   ```bash
   ./app
   ```

   **Saída esperada:**

   ```
   Full Cycle Rocks!!
   ```

---

## 🐳 Executando com Docker (Localmente)

1. **Build da imagem local:**

   ```bash
   docker build -t fc-docker-go .
   ```

2. **Execute o container:**

   ```bash
   docker run --rm fc-docker-go
   ```

   **Saída esperada:**

   ```
   Full Cycle Rocks!!
   ```

---

## ☁️ Executando via Docker Hub

> A imagem está publicada no Docker Hub como:  
> `docker.io/jonasmzsouza/fc-docker-go:latest`

1. **Execute diretamente a imagem publicada:**

   ```bash
   docker run --rm jonasmzsouza/fc-docker-go:latest
   ```

   **Saída esperada:**

   ```
   Full Cycle Rocks!!
   ```

---

## 📝 Sobre o Dockerfile

Este projeto utiliza uma imagem `scratch` (mínima) para produção e uma etapa de build separada com `golang:1.21`, resultando em um binário leve e otimizado.

---

## 📦 Estrutura do Projeto

```bash
.
├── Dockerfile
├── main.go
└── README.md
```

---

## 📃 Licença

Este projeto é de uso livre para fins educacionais.
