pipeline {
    agent none
    stages {
        stage('Build Docker Image') {
            agent any
            environment {
        HOME = "${env.WORKSPACE}"
        }
            steps {
                script {
                     customImage = docker.build("hmathur/speedtest-cli")
                }
            }
        }

        stage('Push Docker Image') {
            agent any
            environment {
        HOME = "${env.WORKSPACE}"
        }
            steps {
                script {
                    docker.withRegistry('', 'docker-creds') {

        customImage.push()
                }
            }
        }

        
    }

    }
    
}