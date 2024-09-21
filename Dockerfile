# Use the official nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default nginx welcome page and copy your HTML file to the nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the container
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
