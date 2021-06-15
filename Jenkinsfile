pipeline {
  agent none

  stages {
    stage('Run in parallel') {
      parallel {
        stage('Run on master') {
          agent { label 'master' }
          steps {
            sh "sleep 120"
          }
        }

        stage('Run on master-slave') {
          agent { label 'master-slave' }
          steps {
            sh "sleep 120"
          }
        }
      }
    }
  }
}