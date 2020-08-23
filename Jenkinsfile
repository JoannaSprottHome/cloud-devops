pipeline {
    agent { docker { image 'python:3.7.3-stretch' } }
    stages {
        stage('build') {
            steps {
                sh 'python3 -m venv clouddevops && . clouddevops/bin/activate && make install'
            }
        }
        stage('lint') {
            steps {
                sh '. clouddevops/bin/activate && make lint'
            }
        }
    }
}
