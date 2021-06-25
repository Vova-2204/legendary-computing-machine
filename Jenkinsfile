pipeline {
  agent { label 'master-slave' }

  stages {
    stage('01-First') {
      agent { label 'master' }
      steps {
        echo "Running 01-First stage"
        sh "chmod +x ./sleep && ./sleep.sh 20"
      }
    }
    
    stage('02-Second') {
      agent { label 'master-slave' }
      stages {
        stage('Parallel exec') {
          parallel {
            stages {
              stage('021-TestSTAGE') {
                // agent { label 'master' }
                steps {
                  sh "chmod +x ./sleep.sh"
                  sh "./sleep.sh 60"
                }
              }
              stage('022-Quality') {
                steps {
                  sh "chmod +x ./sleep.sh"
                  sh "./sleep.sh 60"
                }
              }
            }
            stage('023-Build') {
              steps {
                sh "chmod +x ./sleep.sh"
                sh "./sleep.sh 120"
              }
            }
          }
        }
      }
    }
  }
}
