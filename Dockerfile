# Use Maven + JDK 21 to build and test
FROM maven:3.9.5-eclipse-temurin-21

WORKDIR /app

# Copy files
COPY pom.xml .
COPY src ./src

# Build and run tests
RUN mvn clean test
