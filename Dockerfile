FROM python:latest
LABEL "maintainer"="William Villani Stiehler"

COPY . /var/www
WORKDIR /var/www
RUN pip install -r requirements.txt
ENV PORT=5000
EXPOSE $PORT
ENTRYPOINT python -m flask run --host=0.0.0.0 --port=$PORT --reload 