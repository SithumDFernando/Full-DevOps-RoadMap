# Lab 11: Exploring the Cloud Console

We will manually explore the AWS console to see what Terraform built, and practice cost safety.

## 1. Explore S3 via the Console

If you haven't destroyed the bucket from Module 10, log into the AWS Management Console in your browser.
1. Search for **S3** in the top search bar.
2. Click on S3 to open the dashboard.
3. You should see the bucket created by Terraform (e.g., `devops-roadmap-lab-xxxx`).
4. Click on the bucket. Go to the **Properties** and **Permissions** tabs. Look at the "Block public access" settings—these were configured by your Terraform code!

## 2. Tear it Down Safely

We don't want to leave resources running indefinitely.
Go back to your terminal, in the `10-terraform/terraform` directory:
```bash
terraform destroy -var="bucket_prefix=my-devops-lab"
```
Type `yes` when prompted.

## 3. Verify Destruction

Go back to the AWS S3 Console and refresh the page. The bucket should be gone.

## 4. Cost-Safety Checklist

Before finishing your study session for the day, run through this mental checklist:
- [ ] Did I run `terraform destroy`?
- [ ] Did I shut down any EC2 instances I started manually?
- [ ] Did I delete any load balancers? (These charge by the hour).
