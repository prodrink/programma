FROM python:3

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
	gcc \
	librdkafka1

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt


#CMD [ "python", "./your-daemon-or-script.py" ]