pipeline {
    agent { docker { image 'python:3.7.3-stretch' } }
    stages {
        stage('build') {
            steps {
                sh 'python3 -m venv clouddevops && . clouddevops/bin/activate && make install && wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\ && chmod +x /bin/hadolint'
            }
        }
    }
}
