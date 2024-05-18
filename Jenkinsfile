#!groovy

pipeline {
    agent any

    environment {
        PATH = "$WORKSPACE/miniconda/bin:$PATH"
    }

    stages {
        stage('setup miniconda') {
            steps {
                sh '''#!/usr/bin/env bash
                apt install wget
         
                '''
            }
        }
        stage('Test downloading') {
            steps {
                sh '''#!/usr/bin/env bash
                snakemake -s workflows/download_fastq/Snakefile --directory workflows/download_fastq -n -j 48 --quiet
                '''
            }
        }
    }
}
