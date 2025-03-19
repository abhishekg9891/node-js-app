FROM node:18-alpine
WORKDIR /app
COPY package*.json /app
RUN npm install --production
COPY . .
EXPOSE 5000
CMD ["node", "index.js"]

