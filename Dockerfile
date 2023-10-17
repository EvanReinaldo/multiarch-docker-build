FROM alpine:latest

# Install a basic web server
RUN apk add --no-cache busybox-extras

# Expose the default web server port
EXPOSE 8080

# Start the HTTP server
CMD ["httpd", "-fvv", "-p", "8080", "-h", "/www/data"]
