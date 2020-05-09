pipeline {
  agent { dockerfile true }

  stages {
    stage('test') {
      steps {
        'sh run_test.sh'
      } 
    }

  }
}
