FROM nginx:alpine
COPY nginx-config /etc/nginx

# Remove all server configs except gateway
RUN find /etc/nginx/sites-enabled/* ! -name 'gateway.conf' -delete