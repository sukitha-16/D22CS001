# Use a minimal Nginx-based image as the base image
FROM nginx:alpine

# Copy the HTML and JavaScript files to the Nginx web server directory
COPY index.html /usr/share/nginx/html/
COPY js/ /usr/share/nginx/html/js/

# Expose port 80 for the Nginx web server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
