# Используем официальный образ Go для сборки
FROM golang:1.22-alpine AS builder

WORKDIR /app

# Копируем файлы модуля и скачиваем зависимости
COPY go.mod ./
RUN go mod download

# Копируем исходный код
COPY . .

# Собираем бинарный файл
RUN go build -o main .

# Финальный образ — минимальный
FROM alpine:latest

WORKDIR /root/

# Копируем собранный бинарник из предыдущего этапа
COPY --from=builder /app/main .

# Запускаем приложение
CMD ["./main"]
