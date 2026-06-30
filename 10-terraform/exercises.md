# Exercises 10

1. **State Drift:**
   Run `terraform apply` to create the bucket.
   Log into the AWS Console, find the S3 bucket, and manually add a new tag to it (e.g., `ManualTag: True`).
   Go back to your terminal and run `terraform plan`.
   Notice how Terraform detects the drift (the manual tag) and plans to remove it so the real world matches your code.
   Run `terraform apply` to fix the drift, then run `terraform destroy`.

2. **Automate with CI:**
   Copy `10-terraform/workflows/terraform.yml` to your `.github/workflows/` directory. Open a PR that modifies `main.tf` and watch GitHub Actions automatically run a `terraform plan` for you. *(Requires setting up AWS credentials in GitHub Secrets).*
