# Kubectl Cheatsheet

### Cluster Info & Configuration
- `kubectl cluster-info`: Display cluster info.
- `kubectl version`: Display client and server versions.
- `kubectl config get-contexts`: List available contexts (clusters/namespaces).
- `kubectl config use-context <context-name>`: Switch to a different context.

### Working with Resources (Get, Describe)
- `kubectl get <resource>`: List resources of a specific type (e.g., pods, services, deployments).
- `kubectl get pods -A` (or `--all-namespaces`): List pods in all namespaces.
- `kubectl get <resource> -o wide`: List resources with additional details.
- `kubectl describe <resource> <name>`: Show detailed information about a specific resource (useful for debugging).

### Creating & Managing Resources
- `kubectl apply -f <file.yaml>`: Create or update resources from a YAML or JSON file.
- `kubectl apply -f <directory>/`: Apply all manifests in a directory.
- `kubectl delete -f <file.yaml>`: Delete resources defined in a file.
- `kubectl delete <resource> <name>`: Delete a specific resource by name.

### Pod Operations & Debugging
- `kubectl logs <pod-name>`: Fetch the logs for a pod.
- `kubectl logs -f <pod-name>`: Follow logs for a pod.
- `kubectl logs <pod-name> -c <container-name>`: Fetch logs for a specific container in a multi-container pod.
- `kubectl exec -it <pod-name> -- /bin/sh` (or `/bin/bash`): Open an interactive shell inside a pod.
- `kubectl port-forward <pod-name> <local-port>:<pod-port>`: Forward local ports to a pod.

### Deployments & Scaling
- `kubectl rollout status deployment/<deployment-name>`: View the rollout status of a deployment.
- `kubectl rollout history deployment/<deployment-name>`: View rollout history.
- `kubectl rollout undo deployment/<deployment-name>`: Rollback to the previous deployment version.
- `kubectl scale deployment/<deployment-name> --replicas=<count>`: Scale a deployment to a specific number of replicas.

### Common Shortcuts
- `po`: Pods
- `deploy`: Deployments
- `svc`: Services
- `cm`: ConfigMaps
- `sec`: Secrets
- `ns`: Namespaces
- `no`: Nodes
- `ing`: Ingress
