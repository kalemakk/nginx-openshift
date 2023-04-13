# Use nginx base image
FROM nginx

# Copy webpages from local directory to container's default nginx html directory
COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets
COPY css/ /usr/share/nginx/html/css
COPY js/ /usr/share/nginx/html/js




# Expose port 80
EXPOSE 80

# Start nginx service
CMD ["nginx", "-g", "daemon off;"]