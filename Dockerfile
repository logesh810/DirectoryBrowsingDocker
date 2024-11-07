# Use the official nginx image
FROM nginx:latest

# Copy the contents of your local folder to /usr/share/nginx/html/
#COPY /path/to/your/folder /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80
