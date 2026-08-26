pipeline {
    agent any
    stages {
        stage('Test'){
            steps {
                echo 'Test is successful'
            }
        }
        stage('Repo Cloning'){
            steps {
               git branch: 'main',
            url: 'https://github.com/MozammilAnsari/end-to-end-cicd.git'
            }
        }
        stage('Docker Login'){
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'Docker',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    sh '''
                    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
                    '''
                }
            }
        }
        stage('Iamge build & push'){
            steps{
            sh '''
            echo 'Image building step'
            docker build -t modassir7488/flaskapplication:lts .
            echo 'Image push step'
            docker push modassir7488/flaskapplication:lts
            echo 'Image pulling from dockerhub'
            docker pull modassir7488/flaskapplication:lts
            '''
            }
        }
        stage('Stop and Run Image'){
            steps{
            sh '''
            echo "Stopping old container (if exists)"
            docker rm -f flaskapp || true
            echo 'Running docker container'
            docker run -p 5000:5000 --name flaskapp -d modassir7488/flaskapplication:lts
            '''
            }
        }
    }
}