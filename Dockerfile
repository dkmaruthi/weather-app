FROM alpine
WORKDIR /app
RUN apk add nodejs
RUN apk add npm
COPY ./ ./
RUN npm install
EXPOSE 3000
CMD [ "node", "src/web.js"]