pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Клонирование репозитория...'
                // Jenkins сам клонирует репозиторий, указанный в настройках проекта
            }
        }

        stage('Test') {
            steps {
                echo 'Запуск тестов Go...'
                sh 'go test .'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Сборка Docker-образа...'
                sh 'docker build .'
            }
        }
    }

    post {
        success {
            echo 'Сборка прошла успешно!'
        }
        failure {
            echo 'Сборка завершилась с ошибкой.'
        }
    }
}
