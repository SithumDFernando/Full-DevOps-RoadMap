# Example of a remote backend configuration.
# Uncomment and fill in details to use S3 for remote state.

# terraform {
#   backend "s3" {
#     bucket         = "my-terraform-state-bucket"
#     key            = "devops-roadmap/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-locks"
#     encrypt        = true
#   }
# }
