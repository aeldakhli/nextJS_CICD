FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --production

COPY . .

RUN npm run build

CMD ["npm", "start"]