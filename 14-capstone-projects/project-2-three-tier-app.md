# Project 2: The Three-Tier Application (Intermediate)

## 🎯 Goal
Deploy a traditional 3-tier web application (Frontend, Backend API, Database) to a Kubernetes cluster.

## 📋 Requirements

### 1. The Application Code
You can write your own, or use the sample we provided in Module 05 for the backend, and write a simple React or vanilla JS frontend that calls it.
- **Frontend:** Serves static assets, makes AJAX calls to the Backend.
- **Backend:** A REST API (Python/Node/Go) that reads/writes to a database.
- **Database:** PostgreSQL or Redis.

### 2. Containerization (Docker)
- Write a multi-stage Dockerfile for the Frontend.
- Write a multi-stage Dockerfile for the Backend.
- Ensure both run as non-root users.

### 3. CI Pipeline (GitHub Actions)
- Lint the code.
- Run unit tests.
- Build the Docker images.
- Push the images to GitHub Container Registry (GHCR) tagged with the Git SHA.

### 4. Orchestration (Kubernetes/Helm)
Write a Helm chart that contains:
- **Database:** A StatefulSet or Deployment with a PersistentVolumeClaim (so data survives restarts), and a ClusterIP Service.
- **Backend:** A Deployment (reading DB credentials from a Secret), a ClusterIP Service.
- **Frontend:** A Deployment, a ClusterIP Service, and an Ingress to route external traffic to it.

## ✅ Success Criteria
1. The application can be installed into a local `kind` cluster with a single `helm install` command.
2. I can access the frontend via a local browser, add data, and see it persist even if I delete the backend pods.
3. The database password is not hardcoded anywhere in the Git repository.
