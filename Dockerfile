# Use nginx base image
FROM nginx

# Copy webpages from local directory to container's default nginx html directory
COPY index.html assets/ css/ js/ /usr/share/nginx/html/


# Expose port 80
EXPOSE 80

# Start nginx service
CMD ["nginx", "-g", "daemon off;"]