FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production

COPY . .

RUN mkdir -p /app/logs && chown -R node:node /app/logs

USER node

EXPOSE 3000

USER node

CMD ["node", "index.js"]