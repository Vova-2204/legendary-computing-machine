pipeline {
  agent none
  environment {
    VARIABLE = 'PATH'
  }

  stages {
    stage('Run in parallel') {
      parallel {
        stage('Run on master') {
          agent { label 'master' }
          steps {
            sh "chmod +x ./sleep.sh"
            sh "./sleep.sh"
	    echo "Variable equals: ${VARIABLE}"
          }
        }

        stage('Run on master-slave') {
          agent { label 'master-slave' }
	  environment {
	    VARIABLE = "${VARIABLE}, ololo"
	  }
          steps {
            sh "chmod +x ./sleep.sh"
            sh "./sleep.sh"
	    echo "Variable equals: ${VARIABLE}"
          }
        }
      }
    }
  }
}
