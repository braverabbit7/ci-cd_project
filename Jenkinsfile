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
                  docker run -d -p 9889:80 --name my-nginx-container my-nginx
                '''
            }
        }
        stage('Check 200 code'){
            steps{
                sh'''
                # Ожидание запуска контейнера               
                  sleep 15
                  bash Check200.sh
                '''
            }
        
        stage('MD5 check'){
            steps{
                sh'''                
                  bash checkmdm.sh
                '''
            }

        }

    }
}