FROM node:20

WORKDIR /home/node/app

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN git clone https://github.com/long-woo/turbo_filter_demo.git

RUN npm i --global pnpm && \
    cd ./turbo_filter_demo && \
    pnpm install && \
    pnpm build
