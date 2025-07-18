pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ashutosh-yl/onlyjenkinsnodocker.git' // Replace with your public repo
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
