FROM node:latest

COPY . . 

ENV BACKEND_URL=172.17.0.1:3000

ENV FRONTEND_PORT=8000

RUN npm install 

EXPOSE 8000

CMD ["npm","start"]
