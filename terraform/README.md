# Terraform Root

![Terraform Flow](../img/terraform-flow.png)

This is the main folder for Terraform code to set up AWS infrastructure.

## What it does
- Creates AWS resources like EC2, ECR, EKS using code.

## How to use
- Apply in order: s3-buckets first, then ec2, then platform/ecr and eks.
- Set up remote state to point to the S3 bucket from s3-buckets.
