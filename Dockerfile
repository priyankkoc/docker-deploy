FROM node:8.9-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ./package*.json .
RUN npm install 
COPY . $WORKDIR 
EXPOSE 5555
CMD npm start