# Use the official SonarQube image as the base
FROM sonarqube:latest

# Install Nginx
USER root
RUN apt-get update && apt-get install -y nginx

# Copy Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start both Nginx and SonarQube
CMD service nginx start && exec /opt/sonarqube/bin/run.sh
