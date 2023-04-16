FROM python:3.9

WORKDIR /app

COPY . . 

RUN pip3 install --no-cache-dir -r requirements.txt

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]