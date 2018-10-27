FROM node:8.9-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ./pokedex-go/package*.json .
RUN npm install 
COPY ./pokedex-go/ $WORKDIR 
EXPOSE 5555
CMD npm start