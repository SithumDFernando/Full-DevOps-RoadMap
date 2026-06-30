# Lab 10: Infrastructure as Code

We will provision a simple AWS S3 bucket using Terraform.
*Note: You need Terraform installed and AWS credentials configured (`aws configure`). If you don't have AWS, you can read through the code to understand the syntax.*

## 1. Inspect the Terraform Code

Look in the `10-terraform/terraform/` directory.
- `main.tf`: Uses our custom module to create a bucket.
- `variables.tf`: Defines the inputs (bucket name prefix).
- `outputs.tf`: Defines what data to return after creation.
- `modules/s3-bucket/`: The reusable module code.

## 2. Initialize Terraform

Navigate into the `terraform` directory and initialize:
```bash
cd 10-terraform/terraform
terraform init
```
**Expected Result:** Terraform downloads the AWS provider plugin and says "Terraform has been successfully initialized!"

## 3. Plan the Changes

Run a plan to see what Terraform intends to build:
```bash
terraform plan -var="bucket_prefix=my-devops-lab"
```
**Expected Result:** You will see a list of resources with a `+` next to them, meaning they will be created.

## 4. Apply the Changes

Provision the bucket:
```bash
terraform apply -var="bucket_prefix=my-devops-lab"
```
Type `yes` when prompted.
**Expected Result:** Terraform provisions the bucket and prints the `bucket_name` output.

## 5. Verify the State File

Look at the newly created `terraform.tfstate` file in your directory.
```bash
cat terraform.tfstate
```
Notice how it tracks the exact AWS ARN and ID of the bucket it just created.

## 6. Destroy

Clean up to avoid charges!
```bash
terraform destroy -var="bucket_prefix=my-devops-lab"
```
Type `yes` when prompted.
**Expected Result:** The bucket is deleted from AWS.
