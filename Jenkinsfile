pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Ambil kode dari repo
                checkout scm
            }
        }

        stage('Build Docker Images') {
            steps {
                // Build Docker image sesuai docker-compose.yml
                sh 'docker-compose build'
            }
        }

        stage('Start Containers') {
            steps {
                // Jalankan container di background
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        success {
            echo 'Build dan deploy berhasil!'
        }
        failure {
            echo 'Build gagal, cek log console!'
        }
    }
}
