pipeline {

  agent any
 
  stages {

    stage('terraform Init') {
      steps {
	      //sh 'az login'
          sh 'terraform init'
      }      
    }
  
    stage('terraform Plan') {
      steps {
          sh 'terraform plan'
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
          sh 'terraform apply -auto-approve'
      }
    }
 } 
 }
