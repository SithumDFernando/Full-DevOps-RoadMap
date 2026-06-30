# Exercises 07

1. **Pull and Run your remote image:**
   Now that your image is on GHCR, try running it on your local machine directly from the registry:
   ```bash
   docker run -d -p 8080:8080 ghcr.io/<your-username>/full-devops-roadmap/sample-app:sha-<your-git-sha>
   ```
   *Note: If the package is private by default, you may need to go to Package Settings in GitHub and change visibility to Public.*

2. **Add Trivy Image Scanning (Preview of Module 13):**
   Modify the `build-and-push.yml` workflow. *Before* the push step (or set `push: false` in the build step and load it to Docker), use `aquasecurity/trivy-action` to scan the built image for vulnerabilities.
