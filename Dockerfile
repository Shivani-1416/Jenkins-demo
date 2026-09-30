FROM nginx:alpine

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file
COPY index.html /usr/share/nginx/html/index.html

# Document the container port
EXPOSE 80

# Keep Nginx running
CMD ["nginx", "-g", "daemon off;"]
