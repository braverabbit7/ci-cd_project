pipeline {
    agent any

    stages {
        stage('First_stage') {
            steps {
                sh '''
                    docker build -t my-nginx:latest .

                '''
            }
        }
        stage('Second_stage') {
            steps {
                sh '''
                  docker run -d -p 9889:80 my-nginx
                '''
            }
        }
        stage('3-rd_stage') {
            steps {
                sh '''
                  echo done
                '''
            }
        }
    }
}