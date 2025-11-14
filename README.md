# Hotstar Java CI/CD Pipeline with Maven, Jenkins & Tomcat

## Overview
This project is a Java-based Hotstar-style streaming application integrated with a full CI/CD pipeline built using GitHub, Jenkins, Maven, and Tomcat. It demonstrates the end-to-end process from source code management, automated building, testing, to deployment on a Tomcat server via Jenkins automation.

## Features
- Java application mimicking core Hotstar streaming functionalities
- Build and dependency management with Maven
- Continuous Integration and Deployment using Jenkins
- Deployment on Apache Tomcat server
- Source control and versioning through GitHub

## Prerequisites
You will need the following installed and configured:
- Java JDK (compatible version)
- Maven
- Jenkins server
- Apache Tomcat server
- Git client

## Getting Started

### Clone the Repository
```
git clone https://github.com/Pratik543/hotstar-java-ci-cd-maven-jenkins-tomcat.git
cd hotstar-java-ci-cd-maven-jenkins-tomcat/
```

### Build Application
Build the project with Maven:
```
mvn clean package
```

### Configure Jenkins
- Set up a Jenkins pipeline job linked to this repository
- Configure build triggers (e.g., GitHub webhook on push)
- Use Maven goals such as `clean package` for the build process
- Automate deployment of the WAR file to the Tomcat server in post-build steps

### Deploy on Tomcat
- Deploy the compiled `.war` file located in the `target/` directory to Tomcat's `webapps` folder
- Start or restart the Tomcat server
- Access the Hotstar app at `http://localhost:8080/your-app-context`

## CI/CD Workflow
- Pushes to GitHub trigger Jenkins builds
- Jenkins pulls the latest code, runs Maven builds and tests
- Successful jobs deploy the app to Tomcat automatically

## Contributing
Contributions and improvements are welcome. Please create pull requests or open issues for discussions.

---

Built with 💖 for learning and mastering Java app deployment with CI/CD pipelines using Hotstar streaming app as an example.
