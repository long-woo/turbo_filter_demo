FROM node:20-alpine

WORKDIR /home/node/app

COPY . ./

# USER node

RUN npm i --global pnpm

RUN pnpm install && pnpm build
