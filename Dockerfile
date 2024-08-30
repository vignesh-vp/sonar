# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Expose the port that the application runs on
EXPOSE 8080

# Run the JAR file using the java command
CMD ["java", "-jar", "/app/demo.jar"]
