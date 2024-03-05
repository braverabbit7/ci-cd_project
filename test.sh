#!/bin/bash

# Запуск контейнера с Nginx
docker run -d -p 9889:80 my-nginx

# Ожидание запуска Nginx (можно добавить sleep для подождать инициализации)
sleep 5

# Проверка кода ответа
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:9889)

if [ "$response" == "200" ]; then
    echo "Тест успешно пройден: Код ответа $response"
    exit 0
else
    echo "Тест не пройден: Код ответа $response"
    exit 1
fi