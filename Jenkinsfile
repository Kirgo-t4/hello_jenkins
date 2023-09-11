pipeline {
    agent { 
        node {
                label 'docker-build-agent'
            }
      }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                echo "doing build stuff.."
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                echo "doing test stuff.."
                ls -l
                pwd
                '''
            }
        }
        stage ('Build Images') {
            steps {
                script {
                    dir('.') {
                        dockerImage = docker.build "test_build2"
                    }
                }
                sh '''
                echo "${params.NAME} done..."
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}
