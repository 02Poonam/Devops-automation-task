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

![img1](https://github.com/user-attachments/assets/a81a0be3-50fd-47ab-af5d-6fde8be30a20)


### 2. Jenkins Setup
- Jenkins pipeline configuration
  
  ![img2](https://github.com/user-attachments/assets/18cfc7fd-94bf-4cf6-ba5a-e161efcab125)

  ![img3](https://github.com/user-attachments/assets/129b3c8d-1dee-4d60-8a50-8f1342767c85)

- Jenkins console output showing the error
  
  ![img4](https://github.com/user-attachments/assets/644392d7-0ba9-41e8-80be-4d761982c842)


### 3. Command Line Outputs

- Output of Docker image build

  ![image](https://github.com/user-attachments/assets/d883ce84-9114-4417-892f-a816bb209dec)

- Output of creating an ECR repository and pushed the image to the ECR repository

  ![image](https://github.com/user-attachments/assets/5c6f2b9a-66aa-4d44-9e0f-1879709538ee)
  
- Output of `terraform init`, `terraform fmt`, `terraform validate`, `terraform plan`, and `terraform apply`

  ![image](https://github.com/user-attachments/assets/a29cef95-037f-4df7-a322-9008565909ba)

  ![image](https://github.com/user-attachments/assets/12fd88c2-d087-4f8d-a31b-3bae38f1e7e2)

  ![image](https://github.com/user-attachments/assets/282b36a0-9bb8-42df-9a5a-9018445494b1)

  ![image](https://github.com/user-attachments/assets/e275f814-12eb-412a-b84e-2dd80d2fb775)

  ![image](https://github.com/user-attachments/assets/9c0cb88a-1bfa-40dd-920c-ddb5040aed2c)

  ![image](https://github.com/user-attachments/assets/df5c3dac-02cc-43f0-bf6e-40e73a9d963d)

  
- AWS CLI output (`aws configure list`)

  ![image](https://github.com/user-attachments/assets/0908bfb3-0d70-4c4c-814b-d9598b48f1b4)

### 4. AWS Console Outputs

- S3 Bucket created

  ![image](https://github.com/user-attachments/assets/28268b8c-a5ea-4e86-9a4a-90720266e605)

- RDS created

  ![image](https://github.com/user-attachments/assets/a2fb7445-3090-49e2-9dd1-0c797c445a3c)
  
- ECR Repository and image pushed in the repository

  ![image](https://github.com/user-attachments/assets/208c8ae7-6459-464a-b2b0-0389c0f3d134)
  

## Conclusion
This DevOps project aimed to integrate Docker, Jenkins, AWS ECR, S3, RDS, and Terraform within a CI/CD pipeline. While the infrastructure provisioning through Terraform was initiated successfully, the project encountered issues with the Jenkins pipeline configuration, specifically related to AWS credential authentication. 

The screenshots included in this documentation provide:
- Jenkins Configuration: Showcasing the jenkins pipeline configuration and the console output, which unfortunately led to an authentication error during the Terraform execution phase.
- Command Prompt Outputs: Highlighting the command prompt outputs for Docker image build, creating an ECR repository & pushed the image to the ECR repository, and the execution of  `terraform init`, `terraform fmt`, `terraform validate`, `terraform plan`, and `terraform apply` commands and the AWS CLI output.
- AWS Console Outputs: Showcasing the creation of the S3 Bucket, RDS database instance and the ECR Repository. 

The project currently remains in a troubleshooting phase, with pending resolutions around properly accessing AWS credentials within the Jenkins pipeline. This documentation serves as a transparent record of the project's current status, challenges faced, and steps taken so far.

