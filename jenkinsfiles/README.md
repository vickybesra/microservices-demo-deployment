# Jenkins Pipelines

![jenkins-pipelines](../img/jenkins-pipelines.png)

This folder has Jenkins pipeline scripts (Jenkinsfiles) for each microservice.

## What it does
- Builds Docker images for each service.
- Pushes the images to AWS ECR (Elastic Container Registry).
- Updates the image tags in the Kubernetes manifests so the app can deploy the new version.

## How to use
- Set up AWS and Git credentials in Jenkins/EC2.
- Run the pipeline for the service you want to update.
- Check that the manifest file in `k8s-manifest/` has the new image tag.
