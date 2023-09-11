pipeline {
    agent { 
        node {
            label 'docker-agent'
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
        stage ('Build') {
            steps {
                script {
                    dockerImage = docker.build "test_build2"
                }
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
