FROM node:14 AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
FROM node:18-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app ./
RUN chown -R node:node /usr/src/app
USER node
CMD ["node", "index.js"]