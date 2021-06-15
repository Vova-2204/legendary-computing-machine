pipeline {
  agent none

  stages {
    stage('Run in parallel') {
      parallel {
        stage('Run on master') {
          agent { label 'master' }
          steps {
            sh "chmod +x ./sleep.sh"
            sh "./sleep.sh"
          }
        }

        stage('Run on master-slave') {
          agent { label 'master-slave' }
          steps {
            sh "chmod +x ./sleep.sh"
            sh "./sleep.sh"
          }
        }
      }
    }
  }
}