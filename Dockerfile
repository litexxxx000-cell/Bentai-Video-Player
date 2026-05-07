# Don't Remove Credit @Bentai_Botz
# Subscribe YouTube Channel For Amazing Bot @Bentai
# Ask Doubt on telegram @Bentai

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Bentai-Video-Player
WORKDIR /Bentai-Video-Player
COPY . /Bentai-Video-Player
CMD ["python", "bot.py"]