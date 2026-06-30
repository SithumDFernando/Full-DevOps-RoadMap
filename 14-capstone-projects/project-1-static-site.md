# Project 1: The Static Website Pipeline (Beginner)

## 🎯 Goal
Host a static HTML/CSS website on AWS S3, delivered via CloudFront, with a fully automated CI/CD pipeline.

## 📋 Requirements

### 1. Infrastructure (Terraform)
Write Terraform code to provision:
- An AWS S3 Bucket configured for static website hosting.
- An AWS CloudFront Distribution pointing to the S3 bucket.
- (Optional/Bonus) Route53 DNS records pointing to the CloudFront distribution if you own a domain name.

### 2. Application (HTML)
- Create a simple `index.html` file (a resume, a portfolio, or a "Hello World" page).
- Create a `style.css` file.

### 3. Pipeline (GitHub Actions)
Write a GitHub Actions workflow that:
- Triggers on push to the `main` branch.
- Checks out the code.
- Uses the AWS CLI (or a community action) to sync the HTML/CSS files to the S3 bucket.
- Uses the AWS CLI to invalidate the CloudFront cache so changes appear immediately.

## ✅ Success Criteria
1. I can view your website over HTTPS via the CloudFront URL.
2. If you change a typo in `index.html` and push to Git, the live website updates automatically within 2 minutes without you touching the AWS console.
