FROM node

WORKDIR /app

COPY ./package.json /app/
RUN npm install

COPY ./public /app/public
COPY ./src /app/src

EXPOSE 3000

CMD ["npm", "start"]