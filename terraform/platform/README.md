# Platform Infra

This folder has Terraform for the main AWS platform.

## What it does
- Sets up ECR and EKS for the microservices.

## How to use
- Apply ecr first, then eks.
- Both use remote state from s3-buckets.

## Tips
- Make sure AWS creds have permissions for ECR, EKS, etc.
- Outputs include repo URLs and cluster details.
