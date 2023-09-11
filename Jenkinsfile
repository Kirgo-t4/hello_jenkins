def sayHello() {
    echo "Hello!!!"
}

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
                            dockerImage = docker.build "192.168.122.80:8083/test_build2"
                        }
                    }
                }
                echo "${params.NAME} done..."
                sayHello()
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('http://192.168.122.80:8083', 'nexus3_creds') {
                        dockerImage.push()
                    }
                }
                sayHello()
            }
        }
    }
}
