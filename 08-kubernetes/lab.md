# Lab 08: Deploying to Kubernetes

We will deploy our containerized Sample App to a local Kubernetes cluster.
*Note: Make sure Docker is running.*

## 1. Set up Local Cluster

We will use `kind` (Kubernetes in Docker) or `minikube`. Assuming `kind`:
```bash
# Install kind (if you haven't)
# macOS: brew install kind
# Windows: choco install kind
# Linux: curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64 && chmod +x ./kind && sudo mv ./kind /usr/local/bin/kind

kind create cluster --name devops-lab
kubectl cluster-info
```

## 2. Apply ConfigMap and Secret

We separate config from code. Apply these first:
```bash
kubectl apply -f 08-kubernetes/manifests/configmap.yaml
kubectl apply -f 08-kubernetes/manifests/secret.yaml
```

## 3. Deploy the App

Apply the Deployment and Service:
```bash
kubectl apply -f 08-kubernetes/manifests/deployment.yaml
kubectl apply -f 08-kubernetes/manifests/service.yaml
```
Verify the Pods are running:
```bash
kubectl get pods
kubectl get svc
```

## 4. Test the App

Since this is a local cluster, we can't easily use a LoadBalancer. We will port-forward the Service to our local machine.
```bash
kubectl port-forward svc/sample-app-service 8080:80
```
Open another terminal and test:
```bash
curl http://localhost:8080
```

## 5. View Logs and Describe

Check the logs of your application:
```bash
kubectl logs -l app=sample-app
```
Describe the deployment to see its events:
```bash
kubectl describe deployment sample-app
```

## 6. Teardown

```bash
kind delete cluster --name devops-lab
```
