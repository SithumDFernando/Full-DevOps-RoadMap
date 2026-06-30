# Module 11: Cloud Basics

The Cloud is just someone else's computer. AWS, Azure, and GCP are the major players. They provide infrastructure as a service (IaaS), platform as a service (PaaS), and software as a service (SaaS).

## 🏢 Core Service Categories

Here is how the core concepts map to AWS, since it is our default reference:

| Concept | Description | AWS Service |
|---------|-------------|-------------|
| **Compute** | Virtual Machines to run your code. | EC2 (Elastic Compute Cloud) |
| **Storage** | Object storage for files, images, backups. | S3 (Simple Storage Service) |
| **Networking** | Virtual networks, subnets, and routing. | VPC (Virtual Private Cloud) |
| **IAM** | Identity and Access Management (Users, Roles). | IAM |

## 💰 Free-Tier and Cost Awareness

The cloud is pay-as-you-go. If you leave a large database running over the weekend, you will be billed for it.
- **AWS Free Tier:** Gives you 750 hours/month of a `t2.micro` EC2 instance, 5GB of S3 storage, etc., for the first 12 months.
- **Always Destroy:** When doing labs, always run `terraform destroy` when you are done.
- **Billing Alerts:** The very first thing you should do in a new cloud account is set up a billing alert (e.g., alert me if spending > $5).

## 🔗 How Terraform fits in

In Module 10, you ran `terraform apply` to create an S3 bucket. Terraform called the AWS API over the internet to provision that exact service. You can provision EC2 instances, VPCs, and IAM roles exactly the same way.

---
**Next Module:** [Module 12: Monitoring and Logging](../12-monitoring-logging)

**Further Reading:**
- [AWS Free Tier limits](https://aws.amazon.com/free/)
- [AWS IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)
