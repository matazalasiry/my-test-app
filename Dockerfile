# اختر إصدار Node.js 16.7 أو أعلى
FROM node:16.7

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
