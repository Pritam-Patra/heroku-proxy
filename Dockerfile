FROM python
RUN apt-get update; apt-get install curl
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD python3 app.py
