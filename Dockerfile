FROM node:6.9.1
LABEL version="3.1.0"

ENV PORT 80
EXPOSE 80

RUN npm install pm2@2.1.6 -g

ENTRYPOINT ["pm2", "start", "--no-daemon"]
