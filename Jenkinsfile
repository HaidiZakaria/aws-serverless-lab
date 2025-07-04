pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/HaidiZakaria/aws-serverless-lab.git'
            }
        }

        stage('Zip Lambda') {
            steps {
                bat 'powershell Compress-Archive -Path lambda\\index.js -DestinationPath lambda_function_payload.zip -Force'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'terraform init -input=false'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -input=false'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo '✅ Deployment completed successfully!'
        }
        failure {
            echo '❌ Build failed.'
        }
    }
}
