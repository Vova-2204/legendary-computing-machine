pipeline {
  agent none

  stages {
    stage('Run in parallel') {
      parallel {
        stage('Run on master') {
          agent { label 'master' }
          steps {
            sh "chmod +x ./sleep.sh"
            sh "./sleep.sh 120"
          }
        }

        stage('Run on master-slave') {
          agent { label 'master-slave' }
          stages {
            stage('Run master-slave') {
              steps {
                sh "chmod +x ./sleep.sh"
                sh "./sleep.sh 60"
              }
            }

            stage('Run master-slave2') {
              steps {
                sh "chmod +x ./sleep.sh"
                sh "./sleep.sh 60"
              }
            }
          }
        }
      }
    }
  }
}
