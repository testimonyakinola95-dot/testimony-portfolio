
FROM nginx:alpine

# Copy the website files into Nginx's web directory
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./css /usr/share/nginx/html/css
COPY ./js /usr/share/nginx/html/js
COPY ./images /usr/share/nginx/html/images
COPY ./assets /usr/share/nginx/html/assets

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
# Nginx listens on port 80
EXPOSE 80
