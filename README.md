🚀 Terraform Serverless Web Application (AWS)

This project demonstrates how to build and deploy a complete Serverless Web Application on AWS using Terraform (Infrastructure as Code).

It automates everything — from frontend hosting to backend API — without manually creating resources in AWS Console.

🌟 Features

📦 Creates S3 bucket for static website
🌐 Enables static website hosting
🔓 Configures public access & bucket policy
⚡ Deploys AWS Lambda (Python backend)
🔗 Creates API Gateway (HTTP API)
🌍 (Optional) CloudFront CDN for global delivery
🔐 IAM role with least privilege
⚙️ Fully automated using Terraform (IaC)

🛠️ Tech Stack

Terraform

AWS S3

AWS Lambda (Python 3.12)

AWS API Gateway (HTTP API)

AWS IAM

AWS CloudFront (Optional)

HTML, CSS, JavaScript

Git & GitHub

🏗️ Architecture

Browser
    ⬇
CloudFront (CDN)
    ⬇
S3 Static Website
    ⬇
API Gateway
    ⬇
Lambda (Python Backend)

📁 Project Structure
serverless-terraform/
│
├── provider.tf
├── variables.tf
├── s3.tf
├── iam.tf
├── lambda.tf
├── apigateway.tf
├── outputs.tf
├── frontend/
│   └── index.html
├── lambda/
│   ├── lambda_function.py
│   └── lambda.zip
├── .gitignore
├── .terraform.lock.hcl
└── README.md

⚙️ Prerequisites

Before running this project, make sure you have:

AWS Account

Terraform installed

AWS CLI installed & configured

Git installed

▶️ How to Run
Step 1: Clone the Repository
git clone https://github.com/sriram2222/serverless-terraform.git
cd serverless-terraform

Step 2: Update Bucket Name

Open variables.tf and change:

default = "your-unique-bucket-name"


⚠️ S3 bucket names must be globally unique.

Step 3: Zip Lambda Code
cd lambda
zip lambda.zip lambda_function.py
cd ..

Step 4: Initialize Terraform
terraform init

Step 5: Validate Configuration
terraform validate

Step 6: Apply Terraform
terraform apply


Type yes when prompted.

🌐 Output

After successful deployment:

Terraform creates all AWS resources

It outputs:

Frontend URL

API URL

Open the frontend URL in your browser 🎉

Click the button → Lambda API response will appear.
