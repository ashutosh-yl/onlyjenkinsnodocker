pipeline {
    agent any

    tools {
        maven 'Maven 3.9.6'   // Make sure this is installed/configured in Jenkins
        jdk 'JDK 17'          // Also make sure JDK is available in Jenkins
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/ashutosh-yl/onlyjenkinsnodocker.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }

            post {
                always {
                    junit '**/target/surefire-reports/*.xml' // Publish JUnit test reports
                }
            }
        }

        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
    }

    post {
        success {
            archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
        }
    }
}
