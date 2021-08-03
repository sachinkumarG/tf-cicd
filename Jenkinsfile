pipeline {

  agent any
 
  stages {

    stage('terraform Init') {
      steps {
	      //sh 'az login'
          sh 'cd tf-pipeline && terraform init'
      }      
    }
  
    stage('terraform Plan') {
      steps {
          sh 'cd tf-pipeline && terraform plan'
      }      
    }

    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }

    stage('terraform Apply') {
      steps {
          sh 'cd tf-pipeline && terraform apply -auto-approve'
      }
    }
 } 
 }
