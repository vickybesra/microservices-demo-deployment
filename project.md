# Project Directory:
```
├── jenkinsfiles (builds the images, pushes it to ECR and edit the k8s manifest image tag)
├── k8s-manifest (contains all the k8s manifests for all the microservices)
├── src (contains all the source code and Dockerfile for all the microservices)
└── terraform (contains all the terraform code for AWS infra)
    ├── ec2 (EC2 instance acting as Jumphost and tooling)
    ├── platform (infra hosting the microservices)
    │   ├── ecr (ECR to store docker images for all the microservices)
    │   └── eks (K8s cluster to deploy the app)
    └── s3-buckets (s3 buckets to save the tf state files)
```

# Steps to deploy this app:
1. Terraform apply: s3 then ec2
2. ssh into ec2: run jenkinsfile for ecr and eks available in their dir
3. Create Pipeline and run each jenkinsfile for each microservices
4. Helm install argocd in eks; create argocd application with k8s-manifests as path
5. App is deployed
6. helm install Kube Prometheus Stack (Includes Prometheus + Grafana)
7. Grafana dashboard for observabiltity.
