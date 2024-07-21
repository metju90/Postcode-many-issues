FROM node:22.5-alpine3.20

WORKDIR "/app"

COPY ./be/package.json .
RUN npm install
COPY be .

CMD ["npm", "run", "dev"]
