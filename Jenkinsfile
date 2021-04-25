pipeline {
    agent any
    environment {
      PROJECT_NAME = "Petclinic CI/CD"
      OWNER_NAME   = "alien-al"
      IMAGE = "alienal/petclinic"  
    }

    stages {
        stage('1-Build') {
            steps {
                echo "Start of Stage Build..."
                echo "My name is $USER"
                // sh "./mvnw package"
                sh "docker --version"
                echo "Building......."
             //   sh "docker build -t ${env.IMAGE}:latest ."
                echo "End of Stage Build..."
            }
        }
        stage('2-Test') {
            steps {
                echo "Start of Stage Test..."
                echo "Testing......."
                echo "Hello ${PROJECT_NAME}"
                echo "Owner is ${OWNER_NAME}"
               // sh "docker image ls petclinic --format={{.Size}}"
                echo "End of Stage Build..."
            }
        }
        stage('3-Deploy') {
            steps {
                echo "Start of Stage Deploy..."
                echo "Deploying......."
                sh "ls -la"
                sh '''
                   echo "Line1"
                   echo "Line2"
                '''
                echo "End of Stage Build..."
            }
        }
        stage('4-Celebrate') {
            steps {
                echo "CONGRATULYACIYA!"
            }
        }	
    }
}
