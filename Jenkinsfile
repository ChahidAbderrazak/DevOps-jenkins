pipeline {
    // agent any
    agent {
        docker {
            image 'python:3.8'
        }
    }

    triggers {
        pollSCM '* * * * *'
    }

    stages {
        // stage('Checkout') {
        //     steps {
        //         git branch: 'main', changelog: false, poll: false, \
        // url: 'https://github.com/akarsh/selenium-webdriver-cucumber-js-example-project.git'
        //     }
        // }

        stage('Build') {
            steps {
                echo 'Building..'
                echo "Running the Jenkins build #${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh '''
                cd myapp
                pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Testing..'
                sh '''
                cd myapp
                python hello.py --name=Brad
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
