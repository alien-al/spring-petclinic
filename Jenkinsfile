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
               // sh "docker build -t ${env.IMAGE}:latest ."
                echo "End of Stage Build..."
            }
        }
        stage('Build Docker Image') {
            when {
                branch 'main'
            }
            steps {
                echo '=== Building Petclinic Docker Image ==='
                script {
                    app = docker.build("${env.IMAGE}")
                }
            }
        }
        stage('2-Test') {
            steps {
                echo "Start of Stage Test..."
                echo "Testing......."
                echo "Hello ${PROJECT_NAME}"
                echo "Owner is ${OWNER_NAME}"
                sh "docker image ls ${env.IMAGE} --format={{.Size}}"
                echo "End of Stage Build..."
            }
        }
        stage('Push Docker Image') {
           when {
               branch 'main'
           }
           steps {
               echo '=== Pushing Petclinic Docker Image ==='
               script {
                   //GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
                   //SHORT_COMMIT = "${GIT_COMMIT_HASH[0..7]}"
                   docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
                       app.push("${env.BUILD_ID}")
                       app.push("latest")
                    }
                }
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
