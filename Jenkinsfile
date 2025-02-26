pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url:'https://github.com/02Poonam/Devops-automation-task.git',branch:'main'
            }
        }
        stage('Terraform Init & Apply') {
            steps {
                bat 'cd terraform && terraform init'
                bat 'cd terraform && terraform apply -auto-approve'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t poonam02/devops-automation .'
            }
        }
        stage('Push to ECR') {
            steps {
                bat 'docker push 058264436164.dkr.ecr.us-west-2.amazonaws.com/pb-ecr-repo:latest'
            }
        }
        stage('Update Lambda Function') {
            steps {
                bat 'aws lambda update-function-code --function-name ecr-function --image-uri 058264436164.dkr.ecr.us-west-2.amazonaws.com/pb-ecr-repo:latest'
            }
        }
    }
}
