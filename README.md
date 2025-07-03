# 🚀 AWS Serverless Application with Terraform & Jenkins CI/CD

This project demonstrates a complete CI/CD pipeline to deploy a serverless architecture on **AWS** using **Terraform** and **Jenkins**. It includes an API backend built with AWS Lambda and API Gateway, and a static frontend hosted on S3.

---

## 🧱 Architecture

- **API Gateway (HTTP)** → **Lambda Function (Node.js)**
- **Lambda Execution Role** with basic logging
- **DynamoDB Table** for data storage
- **S3 Bucket** for static frontend hosting
- **Terraform** for infrastructure as code
- **Jenkins** for CI/CD automation

---

## 📁 Project Structure

aws-serverless-lab/
├── backend.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── lambda/
│ └── index.js
├── Jenkinsfile
├── .gitignore
└── README.md

---

## 🚀 Deployed Resources

| Resource | Description |
|----------|-------------|
| **Lambda Function** | `hello_lambda` – returns a JSON message |
| **API Gateway** | Routes HTTP requests to Lambda |
| **DynamoDB Table** | Stores items using `id` as the key |
| **S3 Static Website** | Hosts `index.html` publicly |
| **IAM Role** | Grants Lambda permission to log to CloudWatch |

---

## 🌐 Outputs

After Terraform apply, you get:

api_endpoint       = https://<your-api-id>.execute-api.<region>.amazonaws.com
s3_website_url     = http://<your-bucket-name>.s3-website-<region>.amazonaws.com

🛠️ How to Use
1. Deploy manually (Optional)
terraform init
terraform plan
terraform apply -auto-approve
Ensure you zip the lambda function before running Terraform:
Compress-Archive -Path lambda\index.js -DestinationPath lambda_function_payload.zip -Force

2. Jenkins CI/CD
The Jenkinsfile automates:

Checkout from GitHub

Zipping Lambda code

Terraform init, plan, and apply

🔐 Security Notes
Bucket public access must be disabled via AWS Console or policy adjusted accordingly.

Sensitive keys are stored in Jenkins Credentials (not hardcoded).

.terraform/ and *.zip files are excluded from Git tracking using .gitignore.

🤝 Contributions
Feel free to fork and modify this project for your use case.

## 👤 Author

**Haidi Zakaria**  
Cloud passionate engineer with a strong foundation in IT Infrastructure  
[LinkedIn](https://www.linkedin.com/in/haidi-zakaria-bb424152)
