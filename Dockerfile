FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.omxfizb.mongodb.net
ENV MONGODB_USERNAME sudemy1593_db_user
ENV MONGODB_PASSWORD demopass

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]