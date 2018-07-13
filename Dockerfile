FROM ubuntu

MAINTAINER Hiroaki Sano <hiroaki.sano.9stories@gmail.com>

RUN apt-get update -y && apt-get install git python python-pip -y
RUN cd /tmp \
    && git clone https://github.com/olmoser/tornado-websocket-example.git \
    && cd tornado-websocket-example \
    && pip install -r requirements.txt \
	&& echo "Done"

EXPOSE 8888

CMD ["python", "/tmp/tornado-websocket-example/app.py"]
