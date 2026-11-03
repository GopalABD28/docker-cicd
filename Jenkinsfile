pipeline {
    agent any
    
    stages {
        stage('Code') {
            steps {
                git branch: 'main',
                      url: 'https://github.com/GopalABD28/docker-cicd.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'docker build -t html-app:latest .'
            }
        }
        
        stage('DEPLOY') {
            steps {
                sh '''
                    docker stop html-container || true
                    docker rm html-container || true

                    docker run -d \
                      --name html-container \
                      -p 8080:80 \
                      html-app:latest
                '''
            }
        }
    }
}
