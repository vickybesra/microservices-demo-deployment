# Terraform State Buckets

This creates S3 buckets for Terraform state.

## What it does
- Sets up S3 and DynamoDB for storing Terraform state safely.

## How to use
- Apply first: `terraform init && terraform apply`.
- Use the bucket and table names in other Terraform configs.
