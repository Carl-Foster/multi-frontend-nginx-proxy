FROM nginx:alpine
ARG SERVICE_NAME

COPY nginx-config /etc/nginx
RUN find /etc/nginx/sites-enabled/* ! -name "${SERVICE_NAME}.conf" -delete

COPY ${SERVICE_NAME} /var/www/public