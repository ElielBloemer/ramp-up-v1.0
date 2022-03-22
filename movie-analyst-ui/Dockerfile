FROM node:alpine3.15

COPY . . 

#local backend
ENV BACKEND_URL ${BACKEND_URL}         

ENV FRONTEND_PORT=8000

RUN npm install 

EXPOSE 8000

CMD ["npm","start"]
