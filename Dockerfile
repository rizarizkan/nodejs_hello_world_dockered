FROM amazonlinux:2

WORKDIR /app

COPY . /app
RUN yum update -y && \
    yum install -y nodejs npm
EXPOSE 80
CMD ["node", "app.js"]
#FROM node:14

#WORKDIR /usr/src/app

#COPY package*.json ./

#RUN npm install

#COPY . .

#EXPOSE 3000

#CMD [ "npm", "start" ]

