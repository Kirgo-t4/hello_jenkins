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
                    if (true) {
                        dir('.') {
                            def dockerImage = docker.build "192.168.122.80:8083/test_build2"
                        }
                    }
                }
                echo "${params.NAME} done..."
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('', 'nexus3_creds') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
