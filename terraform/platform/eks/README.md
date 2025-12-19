# EKS Cluster

This sets up the Kubernetes cluster on AWS.

## What it does
- Creates EKS control plane and worker nodes.

## How to use
- Apply after ECR: `terraform init && terraform apply`.
- Update kubeconfig with `aws eks update-kubeconfig`.
