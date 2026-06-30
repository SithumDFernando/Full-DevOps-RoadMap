# Lab 13: Container and IaC Scanning

We will use open-source tools to scan our Docker images and Terraform code for vulnerabilities.

## 1. Container Scanning with Trivy

[Trivy](https://github.com/aquasecurity/trivy) is a comprehensive scanner for vulnerabilities in container images, file systems, and Git repositories.

**Installation (if running locally):**
```bash
# macOS: brew install trivy
# Debian/Ubuntu: 
# wget https://github.com/aquasecurity/trivy/releases/download/v0.48.0/trivy_0.48.0_Linux-64bit.deb
# sudo dpkg -i trivy_0.48.0_Linux-64bit.deb
```

Scan the image we built in Module 06:
```bash
trivy image python:3.10-slim
```
**Expected Result:** Trivy downloads a vulnerability database and prints a table of CVEs found in the base OS image.

## 2. IaC Scanning with Checkov

[Checkov](https://github.com/bridgecrewio/checkov) is a static code analysis tool for infrastructure as code.

**Installation (requires Python):**
```bash
pip install checkov
```

Scan our Terraform code from Module 10:
```bash
cd 10-terraform/terraform
checkov -d .
```
**Expected Result:** Checkov will print a report. It will likely pass (because our module was written securely), but if you remove `block_public_acls = true`, Checkov will fail the build and warn you!

## 3. Integrating into CI

To truly achieve DevSecOps, these tools must run automatically in your pipeline.
If you did the Exercise in Module 07, you already saw Trivy running in GitHub Actions!
