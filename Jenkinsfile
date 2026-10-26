pipeline {
  agent any
  options {
    timestamps()
    disableConcurrentBuilds()
  }
  stages {
    stage('Checkout') {
      steps { checkout scm }
    }
    stage('Terraform Version') {
      steps { sh 'terraform version' }
    }
    stage('Format Check') {
      steps { sh 'terraform fmt -check -recursive' }
    }
    stage('Init') {
      steps { sh 'terraform init -input=false' }
    }
    stage('Validate') {
      steps { sh 'terraform validate' }
    }
    stage('Plan') {
      steps { sh 'terraform plan -input=false' }
    }
  }
}