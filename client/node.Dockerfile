FROM  node:14.3.0-slim

WORKDIR /client
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 3000
