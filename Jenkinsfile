pipeline {
  agent { dockerfile true }

  stages {
    stage('test') {
      steps {
        sh 'build_test.sh'
      } 
    }

  }
}
