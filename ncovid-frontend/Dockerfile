FROM node:12.18.4-alpine3.9
WORKDIR /app

COPY . .
RUN CI=true

RUN npm install

ENV ENDPOINT=$ENDPOINT

EXPOSE 3000

CMD [ "npm", "start" ]