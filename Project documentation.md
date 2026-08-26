# 📘 Project Documentation

## End-to-End CI/CD Pipeline using Jenkins, Docker, and GitHub

---

## 📌 1. Project Overview

This project demonstrates a complete **CI/CD (Continuous Integration and Continuous Deployment)** pipeline for a Python Flask application using:

* **Jenkins** for automation
* **Docker** for containerization
* **GitHub** for source code management
* **DockerHub** for image registry

The pipeline automates the process of building, pushing, and deploying the application whenever changes are made to the codebase.

---

## 🎯 2. Objectives

* Automate application build and deployment
* Containerize Flask application using Docker
* Push Docker image to DockerHub
* Ensure fresh deployment by removing old containers
* Implement a reusable CI/CD workflow

---

## 🏗️ 3. Architecture

```
GitHub → Jenkins → Docker Build → DockerHub → Jenkins → Docker Run
```

---

## 🧰 4. Technologies Used

| Tool      | Purpose                   |
| --------- | ------------------------- |
| Jenkins   | CI/CD automation          |
| Docker    | Containerization          |
| DockerHub | Image storage             |
| GitHub    | Source code repository    |
| Flask     | Web application framework |

---

## 📂 5. Project Structure

```
project-root/
│
├── app.py
├── requirements.txt
├── Dockerfile
└── Jenkinsfile
```

---

## ⚙️ 6. Pipeline Workflow

### Step 1: Repository Cloning

* Jenkins pulls latest code from GitHub repository.

### Step 2: Build Docker Image

* Docker image is created from the Dockerfile.

### Step 3: Login to DockerHub

* Secure login using Jenkins credentials.

### Step 4: Push Image

* Built image is pushed to DockerHub repository.

### Step 5: Pull Latest Image

* Ensures latest version is used for deployment.

### Step 6: Remove Old Container

* Existing container is deleted to avoid conflicts.

### Step 7: Run New Container

* New container is started with updated image.

---

## 🔁 7. Jenkins Pipeline Script

Written the Jenkins pipeline to automate the CI/CD process

## 🔐 8. Credentials Management

* DockerHub credentials stored securely in Jenkins:

  * **ID:** dockerhub-cred
  * **Type:** Username & Password
* Used via `withCredentials` block in pipeline

---

## 🐳 9. Docker Configuration

Written a dockerfile to build the image

## 🚀 10. Deployment Details

* Application runs on:

  ```
  http://localhost:5000
  ```
* Container is automatically replaced on every pipeline run.

---

## ⚠️ 11. Challenges Faced

* Docker not found inside Jenkins container
* Permission issues with Docker socket
* Git branch mismatch (main vs master)
* Credential configuration errors

---

## ✅ 12. Solutions Implemented

* Mounted Docker socket into Jenkins container
* Installed Docker CLI inside container
* Fixed permissions using socket access
* Used correct Git branch configuration
* Managed credentials securely in Jenkins

---

## 📈 13. Future Enhancements

* Add GitHub webhook for auto-trigger
* Deploy to AWS EC2
* Integrate Kubernetes for scaling
* Add automated testing stage
* Implement blue-green deployment

---

## 🎉 14. Conclusion

This project successfully demonstrates a complete CI/CD pipeline that automates the process of building, pushing, and deploying a Flask application using modern DevOps tools. It ensures faster delivery, consistency, and reliability in application deployment.

---
