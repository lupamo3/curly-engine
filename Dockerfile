FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements/base.txt /app/requirements/base.txt
COPY requirements/local.txt /app/requirements/local.txt
COPY requirements/production.txt /app/requirements/production.txt
COPY requirements/tests.txt /app/requirements/tests.txt
RUN pip install -r requirements/base.txt
RUN pip install -r requirements/local.txt
COPY . /app
# port where the Django app runs  
EXPOSE 8000  

