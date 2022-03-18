FROM node:latest

COPY . .

ENV DB_HOST=172.17.0.2

ENV DB_USER=root

ENV DB_PASS=brasil

ENV DB_NAME=movie_db

ENV BACKEND_PORT=3000

EXPOSE 3000

RUN npm install 

RUN ls

CMD ["npm","start"]


