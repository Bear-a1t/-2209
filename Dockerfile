FROM node:20

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && \
    apt-get install -y git


RUN git clone $REPO_URL /app

WORKDIR /app

RUN npm install && npm run build

EXPOSE 8080

CMD ["npm", "start"]
