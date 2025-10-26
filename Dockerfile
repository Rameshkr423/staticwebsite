# Use the official Apache image
FROM httpd:2.4

# Copy your static site files into Apache's document root
COPY . /usr/local/apache2/htdocs/

# Expose port 80 for web traffic
EXPOSE 80

# Apache starts automatically via the default CMD provided by the httpd image
