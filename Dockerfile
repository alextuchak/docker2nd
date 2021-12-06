FROM python:latest

WORKDIR /stock_products

COPY . /stock_products

RUN pip install -r requirements.txt

ENV SECRET_KEY = 'django-insecure-nw^y+m^wmxza1asgk+)!ua2qx9)g+#v=6%76-9i8i(6eqiw94j'

RUN python manage.py migrate

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "stocks_products.wsgi"]