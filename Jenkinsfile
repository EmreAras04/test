pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-emre-credentials', url: 'https://github.com/EmreAras04/test'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build application') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Build Docker Image'){
            steps {
                sh "docker build -f Dockerfile -t devopsece75/triangle_test ."
            }
        }
        stage('Push Docker Image'){
            steps {
                withCredentials([string(credentialsId: 'dockerhub-emre-credentials', variable: 'dockerHubPass')]){
                    sh 'docker login -u devopsece75 -p $dockerHubPass'
                    sh 'docker push devopsece75/triangle_test'
                }

            }
        }
    }
}
