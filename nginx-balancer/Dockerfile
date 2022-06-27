FROM nginx:latest

# Copy nginx conf
COPY /conf/nginx.conf /etc/nginx/nginx.conf

# Start nginx
CMD [ "nginx", "-g", "daemon off;" ]