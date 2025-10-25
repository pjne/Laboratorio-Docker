FROM nginx:alpine

LABEL maintainer="tu-email@example.com"
LABEL version="1.0"
LABEL description="Custom web server for Docker learning"

COPY index.html /usr/share/nginx/html/

RUN apk add --no-cache curl

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -fsS http://localhost/ || exit 1
