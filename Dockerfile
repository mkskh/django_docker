FROM python:3.11

ENV APP_HOME=/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR $APP_HOME

RUN pip install --upgrade pip 

COPY ./requirements.txt $APP_HOME


RUN pip install -r requirements.txt

COPY . $APP_HOME

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]