# --------------- Stage 1 : WAR Builder --------------- #
FROM maven:3.8.3-openjdk-17 AS builder

WORKDIR /app

# Copy project files
COPY . /app

# Build the WAR
RUN mvn clean package -DskipTests=true

# --------------- Stage 2 : Application Runner --------------- #
FROM tomcat:10-jdk17

# Optional: Remove default Tomcat example apps for security/cleanliness
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR from builder to the Tomcat webapps directory.
# We rename it to 'ROOT.war' so your app runs at "/" (root) instead of "/hotstar"
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the standard Tomcat port
EXPOSE 8080

# Do NOT define an ENTRYPOINT or CMD.
# The base Tomcat image already contains the command: CMD ["catalina.sh", "run"]
# This command starts the Tomcat server, which in turn loads your WAR file.