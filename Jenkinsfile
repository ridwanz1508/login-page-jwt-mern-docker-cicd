pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Images') {
            steps {
                echo 'Membangun Docker image...'
                sh 'docker-compose build'
            }
        }

        stage('Start Containers') {
            steps {
                echo 'Menjalankan container Docker...'
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        success {
            echo 'Build berhasil! Container sudah jalan.'
        }
        failure {
            echo 'Build gagal, silakan cek log console.'
        }
    }
}
