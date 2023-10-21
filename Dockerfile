FROM node

WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

RUN npm ci

COPY . .

ENV PORT 4200

EXPOSE $PORT

VOLUME ["/app/data"]

CMD ["node", "app.js"]
