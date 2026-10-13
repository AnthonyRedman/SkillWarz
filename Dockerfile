FROM node:24-slim
WORKDIR /app
COPY skillwarz-clone/package.json skillwarz-clone/package-lock.json ./
RUN npm ci
COPY skillwarz-clone/server/ ./server/
COPY skillwarz-clone/shared/ ./shared/
EXPOSE 2567
CMD ["npx", "tsx", "server/index.ts"]