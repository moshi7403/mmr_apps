# Use lightweight web server base image
FROM nginx:alpine

# Remove default nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML into the nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose the default nginx port
EXPOSE 80

# nginx is already the CMD for this image