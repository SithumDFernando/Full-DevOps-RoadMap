# Exercises 13

1. **Fix an IaC Vulnerability:**
   Go to `10-terraform/terraform/modules/s3-bucket/main.tf` and comment out the entire `aws_s3_bucket_public_access_block` block.
   Run `checkov -d .` in the terraform directory.
   Observe the failure (`CKV_AWS_19: Ensure all data stored in the S3 bucket is securely encrypted at rest`, `CKV_AWS_20: S3 Bucket has an ACL defined which allows public access`, etc.).
   Uncomment the block to "fix" the vulnerability.

2. **Secret Scanning:**
   Create a dummy file called `secrets.txt` and put `aws_access_key_id=AKIAIOSFODNN7EXAMPLE` inside it.
   Run Trivy against the local filesystem: `trivy fs .`
   Trivy should detect the exposed AWS key! Delete the file so you don't accidentally commit it.
