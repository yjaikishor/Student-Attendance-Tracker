# Use a lightweight OpenJDK base image
FROM openjdk:17-jdk-slim

# Set environment variable
ENV APP_HOME=/app

# Create working directory
WORKDIR $APP_HOME

# Copy the Spring Boot jar into the image
COPY target/student-attendance-tracker.jar app.jar

# Expose the port Spring Boot runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
