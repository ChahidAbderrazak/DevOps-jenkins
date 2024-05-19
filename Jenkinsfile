pipeline {
    agent {
        node {
            label 'cpu'
        }
    }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh '''
                cd myapp
                python3 -m venv ./venv
                ./venv/bin/pip install -r requirements.txt
                pip3 install -r requirements.txt
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh '''
                cd myapp
                ./venv/bin/python hello.py
                #python3 hello.py
                #python3 hello.py --name=Brad
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
