#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b https://github.com/botkenzz/Yanzz-Userbott /home/yanzzuserbott/ \
    && chmod 777 /home/yanzzuserbott \
    && mkdir /home/yanzzuserbott/bin/

COPY ./sample_config.env ./config.env* /home/yanzzuserbott/

WORKDIR /home/yanzzuserbott/

RUN pip install -r requirements.txt

CMD ["bash","start"]
