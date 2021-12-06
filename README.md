# 1. Активация venv
`source venv/scripts/activate`

# 2. Создание образа 
`docker build -t stocks_products .`

# 3. Запуск контейнра
`docker run --name django_docker -d -p 8000:8000 stocks_products`

# 3. Проверка работоспособности
Переходим по ссылкам:

`http://localhost:8000/api/v1`
`http://localhost:8000/api/v1/products/`
`http://localhost:8000/api/v1/stocks/`