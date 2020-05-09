pipeline {
  agent { dockerfile true }

  stages {
    stage('test') {
      steps {
        sh 'salt-master --version'
      } 
    }

  }
}
