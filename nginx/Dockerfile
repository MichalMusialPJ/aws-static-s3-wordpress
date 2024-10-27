# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the custom Nginx configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy SSL certificates (if any, optional)
# COPY ./certs /etc/nginx/certs

# Expose port 80 and 443 for HTTP and HTTPS
EXPOSE 80 443

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
