pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                scripts {
                     customImage = docker.build("hmathur/speedtest-cli")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                scripts {
                    docker.withRegistry('', 'docker-creds') {

        customImage.push()
                }
            }
        }

        
    }

    }
    
}