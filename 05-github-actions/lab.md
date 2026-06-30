# Lab 05: Building a CI Pipeline with GitHub Actions

*Note: For this lab, we will place workflow files in `05-github-actions/workflows/` so they don't trigger repo-wide. To make them run in your fork, you will copy them to `.github/workflows/`.*

## 1. Inspect the Sample App

We have provided a minimal Python Flask application in `sample-app/`.
- `app.py`: The web server.
- `test_app.py`: The unit tests using `pytest`.
- `requirements.txt`: Dependencies.

## 2. Hello World Workflow

Look at the structure of a basic workflow. Create `.github/workflows/hello.yml` in your repository root with this content:
```yaml
name: Hello World
on: [push]
jobs:
  greet:
    runs-on: ubuntu-latest
    steps:
      - run: echo "Hello, GitHub Actions!"
```
Commit and push this file. Check the "Actions" tab in your GitHub repo to see it run.

## 3. Review the Full CI Pipeline

Look at `workflows/ci.yml`. This pipeline:
1. Triggers on pushes and PRs.
2. Checks out the code (`actions/checkout@v4`).
3. Uses a matrix to test across Python 3.10 and 3.11.
4. Sets up Python (`actions/setup-python@v4`) and caches dependencies (`actions/cache`).
5. Installs dependencies and runs `pytest`.

## 4. Run the Pipeline

To execute the pipeline, copy it to the active workflows folder:
```bash
mkdir -p ../.github/workflows
cp workflows/ci.yml ../.github/workflows/
git add ../.github/workflows/ci.yml
git commit -m "ci: add full ci pipeline for sample app"
git push origin main
```
Go to your GitHub Actions tab and watch the matrix jobs run in parallel!
