FROM python:3.6

ADD . /temp/

WORKDIR /temp/ChatApplication/chat/
RUN pip3 install -r requirements.txt

EXPOSE 8000
RUN chmod +x run.sh
CMD ["./run.sh"]

