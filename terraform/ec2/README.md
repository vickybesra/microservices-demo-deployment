# EC2 Jumphost

This sets up an EC2 instance as a jumphost for running tools.

## What it does
- Creates an EC2 server to run Jenkins, kubectl, and helm commands.

## How to use
- Apply after s3-buckets: `terraform init && terraform apply`.
- Note the SSH key, IP, and security group.
