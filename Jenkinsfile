pipeline {
    stages {
        stage('Build Image'){
            steps {
                image = docker.build("hmathur/speedtest-cli")
            }
        }
        stage('Push Image'){
            steps {
                 docker.withRegistry('', 'docker-creds') {
                 image.push()
    }
            }
        }
    }
}




    
