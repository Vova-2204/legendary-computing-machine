pipeline {
  agent none

  stages {
    stage('FIRST STAGE') {
      parallel {
        stage('Run on master') {
          agent { label 'master' }
          steps {
            sh "chmod +x ./sleep.sh"
            sh "./sleep.sh 120"
          }
        }

        stage('SECOND STAGE FOR 60') {
          agent { label 'master-slave' }
          stages {
            stage('Run master-slave') {
              steps {
                sh "chmod +x ./sleep.sh"
                sh "./sleep.sh 60"
              }
            }

            stage('THIRD STAGE FOR 60') {
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
