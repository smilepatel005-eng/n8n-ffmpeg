FROM node:20-alpine

RUN apk update && apk add --no-cache ffmpeg

RUN npm install -g n8n

EXPOSE 5678

ENV N8N_PORT=5678

CMD ["n8n", "start"]
