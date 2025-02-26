pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/02Poonam/Devops-automation-task.git'
            }
        }
        stage('Terraform Init & Apply') {
            steps {
                sh 'cd terraform && terraform init'
                sh 'cd terraform && terraform apply -auto-approve'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t poonam02/devops-automation .'
            }
        }
        stage('Push to ECR') {
            steps {
                sh 'docker push 058264436164.dkr.ecr.us-west-2.amazonaws.com/pb-ecr-repo:latest'
            }
        }
        stage('Update Lambda Function') {
            steps {
                sh 'aws lambda update-function-code --function-name ecr-function --image-uri 058264436164.dkr.ecr.us-west-2.amazonaws.com/pb-ecr-repo:latest'
            }
        }
    }
}
