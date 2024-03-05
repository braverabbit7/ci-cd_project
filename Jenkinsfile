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
                
                  sleep 10

                # Проверка кода ответа
                  response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:9889)

                  if [ "$response" == "200" ]; then
                  echo "Код ответа: $response"
                  echo "Тест успешно пройден!"
                  exit 0
                  else
                  echo "Код ответа: $response"
                  echo "Тест не пройден!"
                  exit 1
                  fi
                '''
            }

        }

    }
}