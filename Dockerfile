FROM stoskov/docker-image-nodejs:v4.1.0
LABEL version="1.0.0"

ENV PORT 80
EXPOSE 80

RUN npm install pm2@0.14.7 -g

ENTRYPOINT ["pm2", "start", "--no-daemon"]
