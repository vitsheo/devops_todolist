# ToDo Application Docker Instructions

This repository contains a Dockerized version of the Django ToDo list application.

## Docker Hub Repository
You can find the official image here:
👉 [https://docker.com](https://docker.com)

---

## Instructions for Building and Running

### 1. Prerequisites
Make sure you have **Docker** or **OrbStack** installed and running on your machine.

### 2. How to Build the Image Locally
To build the Docker image using the multi-stage Dockerfile, run the following command in the project root:
```bash
docker build -t todoapp .
```

### 3. How to Run the Container
To start the application inside a detached container and map port `8080` of your machine to port `8080` of the container, execute:
```bash
docker run -d -p 8080:8080 --name todo_container todoapp
```

---

## Accessing the Application

Once the container is successfully running, open your web browser and navigate to:
👉 **[http://localhost:8080](http://localhost:8080)**

You can now use the ToDo application interactive UI or explore the API.

### Stopping the Container
To stop the app, run:
```bash
docker stop todo_container
```
