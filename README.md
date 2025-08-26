# Terraform EC2 Example

This project uses Terraform to create an EC2 instance on AWS.

## Steps

1. Install Terraform, Git, and AWS CLI on your system.
2. Configure your AWS CLI with `aws configure`.
3. Clone this repository or download it as ZIP.
4. Copy `terraform.tfvars.example` to `terraform.tfvars` and update values.
5. Run the following commands:

```sh
terraform init
terraform plan
terraform apply -auto-approve
```

6. To destroy the instance:

```sh
terraform destroy -auto-approve
```

## Notes
- Update `allowed_ssh_cidr` with your own public IP (check via Google "what is my IP").
- Make sure you have created an AWS key pair and provided the correct name.
