FROM ubuntu:20.04

WORKDIR /app
RUN apt-get update && apt-get install -y python3 python3-pip
COPY . .
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "bash", "entrypoint.sh" ]
# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
