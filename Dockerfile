FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm ci

COPY . .

#running npmc commamd
CMD ["node", "app.js"]