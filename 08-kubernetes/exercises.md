# Exercises 08

1. **Simulate a Crash:**
   Edit `08-kubernetes/manifests/deployment.yaml`. Change the `image:` to something that doesn't exist (e.g., `nginx:fake-tag-123`).
   Apply it: `kubectl apply -f 08-kubernetes/manifests/deployment.yaml`
   Check the pods: `kubectl get pods`. You should see `ImagePullBackOff` or `ErrImagePull`.
   Debug it using: `kubectl describe pod <pod-name>`. Look at the `Events:` section at the bottom.
2. **Rollback:**
   Fix the deployment by rolling back to the previous version:
   `kubectl rollout undo deployment/sample-app`
   Verify the pods return to a `Running` state.
