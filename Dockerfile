FROM teamvaders/dolybot:latest

RUN git clone https://github.com/theend-alpha/Plugins.git /root/dolybot

WORKDIR /root/dolybot

RUN pip3 install -U -r requirements.txt

ENV PATH="/home/dolybot/bin:$PATH"

CMD ["python3", "-m", "dolybot"]
