pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                     customImage = docker.build("hmathur/speedtest-cli")
                }
            }
        }

        stage('Push Docker Image') {
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