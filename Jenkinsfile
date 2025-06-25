pipeline {
    agent any

    stages {
        stage('Build Docker Images') {
            steps {
                sh 'docker compose build'
            }
        }
        stage('Start Containers') {
            steps {
                sh 'docker compose up -d'
            }
        }
    }

    post {
        failure {
            echo 'Build gagal, cek log console!'
        }
    }
}
