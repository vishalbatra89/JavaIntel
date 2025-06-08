FROM ubuntu:latest
LABEL authors="admin"

ENTRYPOINT ["top", "-b"]

# Use a base image with Java runtime
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/myapp.jar app.jar

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
