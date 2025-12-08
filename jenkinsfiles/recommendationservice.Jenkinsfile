pipeline {
    agent any

    environment {
        AWS_REGION     = "us-east-1"
        AWS_ACCOUNT_ID = "054799133564"
        ECR_REPO_NAME  = "recommendationservice"
        ECR_REGISTRY   = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"
        ECR_IMAGE      = "${ECR_REGISTRY}/${ECR_REPO_NAME}"
        GIT_REPO_NAME  = "microservices-demo-aws"
        GIT_EMAIL      = "milinddethe15@gmail.com"
        GIT_USER_NAME  = "milinddethe15"
        YAML_FILE      = "recommendationservice.yaml"
    }

    stages {
        stage('Cleaning Workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout from Git') {
            steps {
                git branch: 'main', url: 'https://github.com/milinddethe15/microservices-demo-aws.git'
            }
        }
        stage("Docker Image Build") {
            steps {
                script {
                    dir('src/recommendationservice') {
                        sh 'docker system prune -f'
                        sh 'docker container prune -f'
                        sh 'docker build -t recommendationservice .'
                    }
                }
            }
        }
        stage("ECR Image Pushing") {
            steps {
                script {
                    sh """
                    aws ecr get-login-password --region ${env.AWS_REGION} | docker login --username AWS --password-stdin ${env.ECR_REGISTRY}
                    docker tag recommendationservice:latest ${env.ECR_IMAGE}:${env.BUILD_NUMBER}
                    docker push ${env.ECR_IMAGE}:${env.BUILD_NUMBER}
                    """
                }
            }
        }
        stage('Update Deployment file') {
            steps {
                dir('k8s-manifest') {
                    withCredentials([string(credentialsId: 'my-git-pattoken', variable: 'git_token')]) {
                        sh """
                            git config user.email "${GIT_EMAIL}"
                            git config user.name "${GIT_USER_NAME}"
                            sed -i "s#image:.*#image: ${ECR_IMAGE}:${BUILD_NUMBER}#g" ${YAML_FILE}
                            git add .
                            git commit -m "[Automated] Update ${ECR_REPO_NAME} Image to version ${BUILD_NUMBER}" || true
                            git push https://${git_token}@github.com/${GIT_USER_NAME}/${GIT_REPO_NAME} HEAD:main
                        """
                    }
                }
            }
        }
    }
}
