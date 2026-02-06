# AI Agent Coder

This project is a comprehensive AI coding assistant system built using Java 8, Spring Boot, MySQL, and integrated with Ollama LLM.

## Project Structure

```
/ai-agent-coder
|-- /backend
|   |-- /src
|   |   |-- /main
|   |   |   |-- /java
|   |   |   |   |-- /com
|   |   |   |   |   |-- /feilign
|   |   |   |   |   |   |-- /aiagentcoder
|   |   |   |   |   |       |-- Application.java
|   |   |   |   |   |       |-- /controller
|   |   |   |   |   |       |-- /service
|   |   |   |   |   |       |-- /repository
|   |   |   |   |   |       |-- /model
|   |   |   |-- /resources
|   |   |       |-- application.properties
|   |   |-- /test
|   |       |-- /java
|   |           |-- /com
|   |               |-- /feilign
|   |                   |-- /aiagentcoder
|   |                       |-- ApplicationTests.java
|   |-- pom.xml
|-- /frontend
|   |-- /public
|   |-- /src
|   |   |-- index.js
|   |   |-- App.js
|   |   |-- /components
|   |   |-- /services
|   |   |-- /styles
|   |-- package.json
|-- /database
|   |-- init.sql
|   |-- scripts/
|       |-- create_tables.sql
|-- /docker
|   |-- Dockerfile
|   |-- docker-compose.yml
|-- /docs
|   |-- Deployment_Instructions.md
|   |-- Architecture.md
|-- README.md
```

## Setup Instructions

### Backend
1. Navigate to the backend directory.
2. Use Maven to build the project: `mvn clean install`
3. Run the application: `java -jar target/ai-agent-coder.jar`

### Frontend
1. Navigate to the frontend directory.
2. Install dependencies: `npm install`
3. Start the application: `npm start`

### Database
Run the SQL scripts in the database folder to set up the database.

### Docker
Use the `docker-compose` command to set up the environment.

---
This project follows Alibaba code standards and is designed for enterprise-level applications.