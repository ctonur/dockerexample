
# Docker HTTP Server with Environment Variable

## Project Overview
This project demonstrates a simple HTTP server using Python and Flask. The server responds with a basic HTML page displaying a message set via environment variables. The Docker container runs as a non-root user (User ID: 1001).

---

## Project Structure
```
my-docker-app/
├── app.py          # Python Flask application
├── index.html      # HTML file with message placeholder
├── Dockerfile      # Docker build file
└── README.md       # Project documentation
```

---

## 🚀 Setup Instructions

### Step 1: Clone the Repository
```bash
git clone https://github.com/yourusername/my-docker-app.git
cd my-docker-app
```

---

### Step 2: Build the Docker Image
Build the image using the Dockerfile:
```bash
docker build -t my-python-app .
```

---

### Step 3: Run the Docker Container
Start the container with the default message:
```bash
docker run -d -p 8080:8080 --name my-container my-python-app
```

Access the application in your browser:
```
http://localhost:8080
```

### Step 4: Run with Custom Environment Variable
To change the message displayed, use the `-e` option:
```bash
docker run -d -p 8080:8080 --name my-container -e MESSAGE="Hello from Docker!" my-python-app
```

---

## 📝 Dockerfile Explanation
- **Base Image:** Uses Python 3.9 slim version.
- **User Configuration:** Creates a non-root user with ID 1001.
- **Environment Variable:** Uses the `ENV` directive to set a default message.
- **Ports:** Exposes port `8080` for HTTP traffic.
- **Entrypoint:** Starts the Flask application.

---

## 🧰 Useful Docker Commands
- **View running containers:**
  ```bash
  docker ps
  ```
- **View logs:**
  ```bash
  docker logs my-container
  ```
- **Stop and remove a container:**
  ```bash
  docker stop my-container
  docker rm my-container
  ```
- **Remove all unused containers and images:**
  ```bash
  docker system prune -af
  ```
- **Access the container shell:**
  ```bash
  docker exec -it my-container /bin/bash
  ```

---

## 🌐 Accessing the Application
Open your browser and go to:
```
http://localhost:8080
```
The page will display:
```
Hello, World!
Environment Variable: Hello from Docker!
```

---

## 🧹 Cleanup
To remove the container and image:
```bash
docker stop my-container
docker rm my-container
docker rmi my-python-app
```

---

## 📧 Contact
For any questions or issues, please contact [your-email@example.com](mailto:your-email@example.com).
