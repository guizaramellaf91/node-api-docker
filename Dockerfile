FROM node:17.6.0
COPY . /app/node-api-docker
WORKDIR /app/node-api-docker
RUN npm install
CMD [ "npm", "start" ]
EXPOSE 8000