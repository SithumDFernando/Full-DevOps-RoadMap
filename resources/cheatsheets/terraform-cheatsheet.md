# Terraform Cheatsheet

### Core Workflow
- `terraform init`: Initialize a new or existing Terraform working directory by downloading plugins and modules.
- `terraform validate`: Validate the configuration files in a directory.
- `terraform plan`: Generate and show an execution plan, detailing what Terraform will do when you apply.
- `terraform apply`: Build or change infrastructure according to the execution plan.
- `terraform apply -auto-approve`: Apply changes without prompting for confirmation.
- `terraform destroy`: Destroy all Terraform-managed infrastructure.
- `terraform destroy -auto-approve`: Destroy without prompting for confirmation.

### Formatting & Linting
- `terraform fmt`: Reformat your configuration in the standard style.
- `terraform fmt -recursive`: Reformat files in subdirectories as well.

### State Management
- `terraform state list`: List resources managed in the current state.
- `terraform state show <resource>`: Show the attributes of a single resource in the state.
- `terraform state rm <resource>`: Remove a resource from the Terraform state (it won't destroy the real resource).
- `terraform state pull`: Manually download and output the state from remote state.
- `terraform state push`: Manually upload a local state file to remote state.

### Workspaces
- `terraform workspace list`: List existing workspaces.
- `terraform workspace new <name>`: Create a new workspace.
- `terraform workspace select <name>`: Switch to an existing workspace.
- `terraform workspace show`: Show the name of the current workspace.
- `terraform workspace delete <name>`: Delete an existing workspace.

### Importing Existing Infrastructure
- `terraform import <resource_type>.<resource_name> <resource_id>`: Import existing infrastructure into your Terraform state (e.g., `terraform import aws_s3_bucket.my_bucket my-bucket-name`).

### Outputs & Providers
- `terraform output`: Display all outputs from the root module.
- `terraform output <name>`: Display the value of a specific output.
- `terraform providers`: Show a tree of the providers used by the configuration.
