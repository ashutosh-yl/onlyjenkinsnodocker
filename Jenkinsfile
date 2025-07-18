pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ashutosh-yl/onlyjenkinsnodocker.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build('testng-java-image')
                }
            }
        }

        stage('Run Tests in Docker') {
            steps {
                script {
                    dockerImage.inside {
                        sh 'mvn test'
                    }
                }
            }
        }
    }
}
