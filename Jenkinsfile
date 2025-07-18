pipeline {
    agent any

    tools {
        maven 'Maven 3.9.5'       // This name must match what you configure in Jenkins global tools
        jdk 'JDK 21'              // This name must match what you configure in Jenkins global tools
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/your-repo.git' // Replace with your public repo
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
