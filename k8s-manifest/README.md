# Kubernetes Manifests

![ArgoCD Deployment](../img/argocd.png)

This folder has Kubernetes YAML files for deploying all microservices.

## What it does
- Defines how each service runs (Deployments, Services, ConfigMaps).
- Used by Argo CD to keep the cluster up to date by GitOps.

## How to use
- Point Argo CD to this folder or run `kubectl apply -f .` after images are pushed to ECR.
- Image tags are updated by Jenkins pipelines.
