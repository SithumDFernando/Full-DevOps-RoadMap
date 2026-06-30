terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Generate a random string to ensure the bucket name is globally unique
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# Call our custom module
module "my_bucket" {
  source      = "./modules/s3-bucket"
  bucket_name = "${var.bucket_prefix}-${random_id.bucket_suffix.hex}"
  environment = var.environment
}
