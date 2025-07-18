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
                    docker.image('testng-java-image').inside("-v ${env.WORKSPACE}/.m2:/root/.m2") {
                    sh 'mvn test'
                }
            }
        }
    }

    }
}
