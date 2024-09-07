node {
    agent any
    docker.withRegistry('', 'docker-creds') {

        def customImage = docker.build("hmathur/speedtest-cli")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}