# Exercises 11

1. **Set up a Billing Alert:**
   Log into the AWS Console.
   Search for **Billing** -> **Budgets**.
   Create a new Budget. Set a "Zero spend budget" or a custom budget of `$5.00`. Configure it to send an email to your personal email address if the forecasted or actual spend exceeds that amount.
   *(Note: Setting this up now will save you from unexpected bills later!)*

2. **Explore IAM:**
   Search for **IAM** in the AWS Console.
   Click on **Users**. Create a new user named `terraform-ci`. Attach the `AmazonS3FullAccess` policy to it. Generate an Access Key for this user.
   *(This is the key you would put into GitHub Secrets to allow GitHub Actions to run your Terraform pipeline in Exercise 10).*
