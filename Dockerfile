FROM python:3.6

ENV PYTHONUNBUFFERED 1
RUN mkdir -p /opt/services/djangoapp/src

COPY Pipfile Pipfile.lock /opt/services/djangoapp/src/
WORKDIR /opt/services/djangoapp/src
RUN pip install pipenv && pipenv install --system

# Add requirements.txt to the image
COPY requirements.txt /opt/services/djangoapp/src/requirements.txt
RUN pip install -r requirements.txt

COPY . /opt/services/djangoapp/src
RUN cd hello && python manage.py collectstatic --no-input 


EXPOSE 80
CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8000", "--chdir", "hello", "hello.wsgi:application"]

