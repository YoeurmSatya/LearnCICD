# Dockerfile to serve the templatemo static slideshow using nginx
FROM nginx:stable-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy current directory (project files) into nginx html directory
COPY . /usr/share/nginx/html

# Ensure correct permissions
RUN chown -R nginx:nginx /usr/share/nginx/html || true

EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
