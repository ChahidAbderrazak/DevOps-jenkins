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
        // stage('Checkout') {
        //     steps {
        //         git branch: 'main', changelog: false, poll: false, url: 'https://github.com/akarsh/selenium-webdriver-cucumber-js-example-project.git'
        //     }
        // }
        stage('Build') {
            steps { s
                echo 'Building..'
                sh '''
                cd myapp
                python3 -m venv ./venv
                ./venv/bin/pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
                sh '''
                cd myapp
                ./venv/bin/python hello.py
                ./venv/bin/python hello.py --name=Brad
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
