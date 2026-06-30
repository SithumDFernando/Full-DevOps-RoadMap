# Lab 09: Creating a Helm Chart

We will convert our raw manifests from Module 08 into a reusable Helm chart.

## 1. Inspect the Chart

We have pre-created the chart structure in `09-helm/charts/sample-app/`.
Look at `values.yaml`. Notice how things like `replicaCount`, `image.tag`, and `service.port` are defined here.
Look at `templates/deployment.yaml`. Notice the Go-template syntax: `{{ .Values.replicaCount }}`.

## 2. Install the Chart

Start your local cluster (e.g., `kind create cluster --name devops-lab`).

Install the chart:
```bash
cd 09-helm
helm install my-app ./charts/sample-app
```
**Expected Result:** Helm says `STATUS: deployed`.

Verify the resources were created:
```bash
kubectl get all
```

## 3. Upgrade the Release

Let's say we want to scale up for a traffic spike. Instead of editing the YAML, we can override the value via CLI.
```bash
helm upgrade my-app ./charts/sample-app --set replicaCount=4
```
Watch the pods scale up:
```bash
kubectl get pods
```

## 4. Rollback

Oops, we didn't mean to scale up! Let's roll back.
First, view the release history:
```bash
helm history my-app
```
Roll back to revision 1:
```bash
helm rollback my-app 1
```
Check the pods again; they will scale back down to 2.

## 5. Teardown

```bash
helm uninstall my-app
kind delete cluster --name devops-lab
```
