FROM oven/bun:1.4.4-slim@sha256:1846adf22496bd711036aae8be147e57bdebbaea2e5264e3e0b5af1db187d9a4
WORKDIR /app
COPY package.json ./
RUN bun install --production --no-save
COPY . .
EXPOSE 3000
CMD ["bun", "run", "index.js"]
