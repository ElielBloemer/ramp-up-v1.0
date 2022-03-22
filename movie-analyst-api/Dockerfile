FROM node:alpine3.15

COPY . .

# Base de datos
ENV DB_HOST ${DB_HOST}   
ENV DB_USER ${DB_USER}        
ENV DB_PASS ${DB_PASS}      
ENV DB_NAME ${DB_NAME}        


ENV BACKEND_PORT=3000

EXPOSE 3000

RUN apk update

RUN apk add mysql mysql-client 

RUN npm install 

CMD ["npm","start"]


