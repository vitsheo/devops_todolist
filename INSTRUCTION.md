# ToDo Application Docker Instructions

This repository contains a Dockerized version of the Django ToDo list application.

## Docker Hub Repository
You can find the official image here:
👉 [https://docker.com](https://docker.com)

---

## Instructions for Building, Tagging, and Pushing

### 1. Prerequisites
Make sure you have **Docker** or **OrbStack** installed and running on your machine.

### 2. How to Build the Image Locally
To build the Docker image using the multi-stage Dockerfile, run the following command in the project root:
```bash
docker build -t todoapp .
```

### 3. How to Tag the Image for Docker Hub
To assign the required repository name and version tag to your local image, execute:
```bash
docker tag todoapp vitsheo/todoapp:1.0.0
```

### 4. How to Push the Image to Docker Hub
Log in to your Docker Hub account via the terminal and push the tagged image to your remote repository:
```bash
docker login
docker push vitsheo/todoapp:1.0.0
```

---

## Instructions for Running and Accessing

### 1. How to Run the Container
To start the application inside a detached container and map port `8080` of your host machine to port `8080` of the container, run:
```bash
docker run -d -p 8080:8080 --name todo_container vitsheo/todoapp:1.0.0
```

### 2. Accessing the Application via Browser
Once the container is successfully running, open your web browser and navigate to:
👉 **[http://localhost:8080](http://localhost:8080)**

You can now use the ToDo application interactive UI or explore the API.

### 3. Stopping the Container
To stop and remove the container, run:
```bash
docker stop todo_container
docker rm todo_container
```
