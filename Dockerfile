FROM node:14.13.1

RUN mkdir -p /app && chown -R node:node /app
WORKDIR /app
COPY package.json package-lock.json /app/
USER node
RUN npm install
COPY . /app
EXPOSE 3000
CMD [ "npm", "start" ]
