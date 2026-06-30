# Lab 07: Pushing to a Registry via CI/CD

We will automate building the Docker image from Module 06 and pushing it to GitHub Container Registry (GHCR) using GitHub Actions.

## 1. Review the Workflow

Open `07-container-registries/workflows/build-and-push.yml`.
Notice the steps:
1. `docker/login-action`: Authenticates to `ghcr.io` using the built-in `GITHUB_TOKEN`.
2. `docker/metadata-action`: Automatically generates tags (we configure it to use the git short SHA).
3. `docker/build-push-action`: Builds the Dockerfile and pushes it to the registry.

## 2. Activate the Workflow

Copy the workflow to your `.github/workflows/` directory:
```bash
cp 07-container-registries/workflows/build-and-push.yml ../.github/workflows/
```

## 3. Configure GitHub Package Permissions

Before pushing, ensure your repository has permission to push packages:
1. In your GitHub repo, go to **Settings** -> **Actions** -> **General**.
2. Scroll down to **Workflow permissions**.
3. Ensure **Read and write permissions** is selected. Save.

## 4. Trigger the Build

Commit and push the new workflow to `main`:
```bash
git add ../.github/workflows/build-and-push.yml
git commit -m "ci: add docker build and push workflow"
git push origin main
```

## 5. Verify the Image

1. Go to your GitHub repository.
2. Click on the **Actions** tab and watch the workflow complete.
3. On the main page of your repository, look at the right sidebar under **Packages**.
4. You should see `sample-app`. Click it, and you'll see your image tagged with a Git SHA!
