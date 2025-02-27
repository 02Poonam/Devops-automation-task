# Devops-automation-task

# DevOps Project with Jenkins, Terraform, and AWS

## Project Overview
This project demonstrates the integration of Docker, Jenkins, AWS ECR, Lambda, S3, RDS, and Terraform with a CI/CD pipeline.

## Issue Faced
While setting up the CI/CD pipeline using Jenkins and Terraform, an authentication error with AWS credentials was encountered. Terraform failed to authenticate with AWS, resulting in a 'No valid credential sources found' error.

## Error Description
```
Error: No valid credential sources found
Error: failed to refresh cached credentials, no EC2 IMDS role found
```

## Screenshots
### 1. Project Setup
- Project directory structure

### 2. Jenkins Setup
- Jenkins credentials configuration (showing AWS credentials)
- Jenkins pipeline configuration
- Jenkins console output showing the error

### 3. Command Line Outputs
- Output of `terraform init`, `terraform plan`, and `terraform apply`
- AWS CLI output (`aws configure list`)

## Conclusion
This document provides a detailed overview of the issue faced during the DevOps project and the steps that can be taken to resolve it. The included screenshots offer a visual guide through the troubleshooting process.

