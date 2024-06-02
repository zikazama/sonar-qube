# Use the official SonarQube image as a base
FROM zikazama/sonarqube_service:latest

# Set the container name
LABEL maintainer="Your Name fauzi.web19@gmail.com"

# Expose port 80 within the Docker network
EXPOSE 80

# Set environment variables
ENV SONARQUBE_JDBC_USERNAME=sonar \
    SONARQUBE_JDBC_PASSWORD=sonar \
    SONARQUBE_JDBC_URL=jdbc:postgresql://db:5432/sonarqube

# Define volume mount points
VOLUME /opt/sonarqube/data \
       /opt/sonarqube/logs \
       /opt/sonarqube/extensions
