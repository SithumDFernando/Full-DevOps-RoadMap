# Project 3: GitOps with ArgoCD (Advanced)

## 🎯 Goal
Implement a modern GitOps workflow where your Kubernetes cluster automatically synchronizes its state with a Git repository using ArgoCD.

## 📋 Requirements

### 1. Infrastructure Provisioning
- Use Terraform to spin up a managed Kubernetes cluster (EKS on AWS, AKS on Azure, or GKE on GCP). *Note: This will cost money, remember to destroy it!*

### 2. CI/CD Split
You need TWO Git repositories for this project:
- **App Repo:** Contains your application code (from Project 2) and a GitHub Actions workflow that builds the Docker image, pushes to a registry, and then *updates the image tag in the Config Repo*.
- **Config Repo:** Contains only Helm charts or raw Kubernetes YAML manifests.

### 3. GitOps Engine (ArgoCD)
- Install ArgoCD onto your Kubernetes cluster.
- Configure an ArgoCD `Application` Custom Resource (CRD) that points to your **Config Repo**.

### 4. Monitoring (Bonus)
- Install the `kube-prometheus-stack` Helm chart into your cluster.
- Ensure Grafana is accessible and tracking your application's resource usage.

## ✅ Success Criteria
1. When a developer pushes a code change to the **App Repo**, the CI pipeline builds the image and commits the new tag to the **Config Repo**.
2. Within 3 minutes, ArgoCD detects the change in the Config Repo and automatically deploys the new image to the cluster.
3. If someone manually deletes a Deployment via `kubectl delete deployment`, ArgoCD immediately notices the drift from Git and recreates it.
