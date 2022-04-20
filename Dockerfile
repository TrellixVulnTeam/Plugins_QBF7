FROM teamvaders/dolybot:latest

RUN git clone https://github.com/theend-alpha/Plugins.git /root/hellbot

WORKDIR /root/hellbot

RUN pip3 install -U -r requirements.txt

ENV PATH="/home/hellbot/bin:$PATH"

CMD ["python3", "-m", "dolybot"]
