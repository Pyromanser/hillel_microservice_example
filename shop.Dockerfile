FROM python:3.9-slim

RUN apt update && apt install curl -y

COPY wait-for-command.sh /

COPY shop app/

WORKDIR app/

RUN pip install -r requirements.txt

EXPOSE 8000

RUN chmod +x docker-entrypoint.sh /wait-for-command.sh runserver.sh

ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
